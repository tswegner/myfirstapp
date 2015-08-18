require 'rails_helper'

describe ProductsController, :type => :controller do
  before(:each) do
      #@request.env["devise.mapping"] = Devise.mappings[:user]
      @user = User.create(email: "max@muller.de", password: "12345678")
      sign_in @user
    end

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end