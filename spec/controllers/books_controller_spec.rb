require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  before(:each) do
    @books = FactoryGirl.create_list(:book, 20)
  end

  describe 'GET index' do

    it 'load' do
      get :index
      expect(response.status).to eq(200)
    end

  end

  describe 'GET show' do
    it 'load' do 
      get :show, params: {id: @books.first.id }
      expect(response.status).to eq(200)
      expect(assigns(:book)).to eq(@books.first)
    end
  end
  
end