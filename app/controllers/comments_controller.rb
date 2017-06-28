class CommentsController < ApplicationController
  def create
      @comment =Comment.new
      @comment.content = params[:input_comment]
      @comment.project_id = params[:project_id]
      @comment.save
      redirect_to "/projects/show/#{params[:project_id]}"
  end

  def delete
      @comment = Comment.find(params[:comment_id])
      @comment.delete
      redirect_to "/projects/show/#{params[:project_id]}"
  end
end
