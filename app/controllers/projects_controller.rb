class ProjectsController < ApplicationController
  before_action :require_login, only: [:new, :create]
  load_and_authorize_resource

  def index
    @projects = @projects.order(:end_date)
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
    params.require(:project).permit(:title, :description, :goal, :start_date, :end_date, :image, :image_cache, :remove_image, rewards_attributes: [:amount, :description, :image, :image_cache, :remove_image])
  end
end
