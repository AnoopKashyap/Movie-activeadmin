# Controller for user comments on the movie.
class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = UserComment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.movie_id = params[:movie][:id]

    if @comment.save
      flash[:notice] = 'Comment was successfully submitted'
    else
      flash[:alert] = 'Something went wrong. Please try again later!'
    end

    redirect_to movies_path
  end

  private

  def comment_params
    params.permit(:user_id, :movie_id, :review)
  end
end
