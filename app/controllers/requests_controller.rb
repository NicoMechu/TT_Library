class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    r = Request.new
    r.user = current_user
    book = Book.find(params[:book_id])
    r.book = book
    r.status = :pending
    if r.save
      flash[:notice] = "The book \"#{book.title}\" has been succesfuly requested"
    else
         flash[:errors] = r.errors.full_messages.join(", ")
    end
    flash[:notice] = "The book \"#{book.title}\" has been succesfuly requested"
    redirect_to :back
  end

end
