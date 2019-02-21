class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new 
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.movie_id = params[:movie][:id]
    if @comment.save
      flash[:notice] = "Comment was successfully submitted"
      redirect_to movies_path
    end
  end

  private 
  def comment_params
    params.permit(:user_id, :movie_id, :review)
  end
end