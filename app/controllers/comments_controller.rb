class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    comment = Comment.new(comment_param)
    comment.user = current_user
    comment.book_id = params[:book_id]

    if !comment.save
      flash[:error] = comment.errors.full_messages.join(", ")
    end
    redirect_to :back
  end

  private
    def comment_param
      params.require(:comment).permit(:message, :rate)
    end
end
