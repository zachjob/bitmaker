class ProjectsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def index
    @projects = Project.all
    @projects = @projects.order(:end_date)

    @total_projects = Project.count
    @total_pledged = Pledge.sum(:dollar_amount)
    @total_num_projects_funded = Project.joins(:pledges).group(:id).having('sum(pledges.dollar_amount) >= projects.goal').length
    @categories = Category.all
  end

  def show
    @project = Project.find(params[:id])

  end

  def new
    @project = Project.new
    @project.rewards.build
  end

  def create
    @project = Project.new(create_params)
    @project.user = current_user

    if @project.save!
      redirect_to projects_url
    else
      render :new
    end
   end


   private
    def create_params
      params.require(:project).permit(:title, :description, :goal, :start_date, :end_date, :image, :category_id)
    end
end
