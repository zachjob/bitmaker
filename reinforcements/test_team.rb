require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

    def test_to_hash_return_team
        test = Team.new("test", 12, "test")
        actual = test.to_hash 
        expected = { team_name: "test", level: 12, points: 0 }
        assert_equal(expected, actual)
    end

end