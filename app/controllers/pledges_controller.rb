class PledgesController < ApplicationController
  before_action :require_login

  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user = current_user
    if @pledge.save
      redirect_to project_url(@pledge.project), flash: "You have successfully backed #{@pledge.project.title}!"
    else
      @project = Pledge.project
      render 'project/show'
    end
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount)
  end
end
