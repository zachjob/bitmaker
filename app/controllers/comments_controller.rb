class CommentsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @comment = Comment.new
    @comment.user = current_user
    @comment.project = @project
    @comment.comment = params[:comment][:comment]

    if @comment.save
      flash[:notice] = "Thank you for submitting your comment!"
      redirect_to project_url(@project)
    else
      flash[:alert] = "Sorry, there was a problem with submitting your comment!"
      render "projects/show"
    end

  end

  def destroy
    @project = Project.find(params[:project_id])
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    flash[:notice] = "Your comment has been successfully deleted!"
    redirect_to project_url(@project)
  end
end
