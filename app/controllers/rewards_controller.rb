class RewardsController < ApplicationController
  before_action :load_project

  def new
    @reward = Reward.new
  end

  def create
    @reward = @project.rewards.build(reward_params)
  end

  def destroy

  end

  private

  def load_project
    @project = Project.find(params[:project_id])
  end

  def reward_params
    params.require(:reward).permit(:dollar_amount, :description)
  end
end
