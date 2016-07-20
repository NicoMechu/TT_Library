class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    r = Request.new
    r.user_id = current_user.id
    r.book_id = params[:book_id]
    book = Book.find(params[:book_id])
    r.status = :pending
    r.save 
    flash[:notice] = "The book \"#{book.title}\" has been succesfuly requested"
    redirect_to :back
  end

end
