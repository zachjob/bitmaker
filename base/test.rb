require 'minitest/autorun'
require 'pry'

class TestApp < Minitest::Test

  def compress(output)
    output.split("\n").delete_if(&:empty?).map(&:strip)
  end

  def erase_msg(msg)
    print "\b" * msg.size
    print ' ' * msg.size
    print "\b" * msg.size
  end

  def pad_with_zero(num)
    num.to_s.size == 1 ? "0#{num}" : num
  end

  def run_episode(num)
    `ruby geordis-replicator.rb #{num} fast`
  end

  def test_reset_exercises
    output = compress(`ruby geordis-replicator.rb --reset-exercises`)
    assert_equal output.last, 'Creating episode-15'
  end

  def test_help_with_no_command_line_arguments
    output = compress(`ruby geordis-replicator.rb`)
    assert_equal output.first, 'Usage'
    assert_equal output.last, 'ruby geordis-replicator.rb 1'
  end

  def test_episode_1_success
    output = compress(run_episode(1))
    assert_equal output.first, "Episode #01: \"CAFFEINE KICKOFF\""
    assert_equal output.last, 'Congratulations! You may now move on to the next episode.'
  end

  def test_remaining_episodes_buggy

    (2..15).each do |num|

      msg = "Testing Episode #{num}"
      print msg

      output = compress(run_episode(num))
      assert_match "Episode ##{pad_with_zero(num)}", output.first
      assert_equal output.last, "Use your newly learned debugging techniques to fix the issue and play the episode again."

      erase_msg(msg)

    end

  end

end
