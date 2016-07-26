class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @comments = @book.comments.recents
    if user_signed_in?
      @comment = Comment.new
      @rateable = current_user.has_read?(@book)
    end
  end

  def index
    @books = Book.all
  end
end
