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
      flash[:error] = r.errors.full_messages.join(", ")
    end
    redirect_to :back
  end

  def index
    @requests = current_user.requests.not_canceled
  end

  def destroy
    rec = current_user.requests.find(params[:id])
    rec.update status: 'canceled'
    redirect_to :back
    flash[:notice] = "The request of \"#{rec.book}\" has been canceled"
  end

end
