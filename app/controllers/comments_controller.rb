class CommentsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @comment = Comment.new
  end

  def update
  end

  def destroy
  end
end
