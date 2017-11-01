class UpdatesController < ApplicationController
  def index
    @updates = Update.all
  end

  def new
    @update = Update.new
    @project = Project.find(params[:project_id])
  end


  def create
    @project = Project.find(params[:project_id])
    @update = Update.new
    @update.title = params[:update][:title] #we are not finding anything but creating something
    @update.description = params[:update][:description]#therefore dont use the find query
    @update.project = @project #takes the whole project object and saves it in project method
    #^ we need this method to save the id of project 
    if @update.save
      redirect_to project_updates_path(@project)
    else
      render 'projects/show'
      #render views, redirect to routes
    end

  end

  def edit
    @update = Update.find(params[:id])
  end

  def destroy
    @update = Update.find(params[:id])
    @update.destroy
  end



end
