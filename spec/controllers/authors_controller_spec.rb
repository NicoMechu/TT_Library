require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  before(:each) do
    @authors = FactoryGirl.create_list(:author, 20)
  end

  describe "GET index" do

    it "load index" do
      get :index
      expect(response.status).to eq(200)
    end

  end

  describe "GET show" do

    before(:each) do
     get :show, params: {id: @authors.first.id}
    end

    it "load author" do
      expect(assigns(:author)).to eq(@authors.first)
    end

    it "load ok" do
      expect(response.status).to eq(200)
    end

  end
end
