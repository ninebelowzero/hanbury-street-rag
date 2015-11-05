class CommentsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    redirect_to root_path unless current_user.is_admin?
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to article_path(@comment.commentable), notice: "Comment deleted."
  end

end