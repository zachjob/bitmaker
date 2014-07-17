class ProjectsController < ApplicationController
  before_filter :require_login, only: [:new, :create]
  load_and_authorize_resource

  def index
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project.rewards.build
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
   end

  private
  def project_params
    params.require(:project).permit(:title, :description, :image, rewards_attributes: [:amount, :description])
  end
end
