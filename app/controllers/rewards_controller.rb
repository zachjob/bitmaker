class RewardsController < ApplicationController
  before_action :load_project

  def new
    @reward = Reward.new
  end

  def create

  end

  def destroy

  end

  private

  def load_project
    @project = Project.find(params[:project_id])
  end
end
