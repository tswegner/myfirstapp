require 'rails_helper'

describe ProductsController, :type => :controller do
  before(:each) do
      #@request.env["devise.mapping"] = Devise.mappings[:user]
      @user = create(:user)
      sign_in @user
      get 'index', id: @user.id
      @product = create(:product)
    end

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get 'index'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get 'index'
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      get 'show', id: @product.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the show template" do
      get 'show', id: @product.id
      expect(response).to render_template("show")
    end
  end
end