class Api::V1::BooksController < Api::ApiController

  def index
    @books = Book.all
  end


  def show
    @book = Book.find(params[:id])
    @comments = @book.comments.recents
  end

end
