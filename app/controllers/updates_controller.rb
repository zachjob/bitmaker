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
    @update.title = params[:title] #we are not finding anything but creating something
    @update.description = params[:description]#therefore dont use the find query
    if @update.save
      redirect_to project_updates_path(@project)
    else
      render :projects
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
