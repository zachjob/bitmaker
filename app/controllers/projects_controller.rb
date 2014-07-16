class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    3.times { @project.rewards.build }
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
    params.require(:project).permit(:title, :description, rewards_attributes: [:amount, :description])
  end
end
