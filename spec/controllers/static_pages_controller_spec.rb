require 'rails_helper'

describe StaticPagesController, :type => :controller do
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

  describe "GET #about" do
    it "responds successfully with an HTTP 200 status code" do
      get :about
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end

  describe "GET #contact" do
    it "responds successfully with an HTTP 200 status code" do
      get :contact
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the contact template" do
      get :contact
      expect(response).to render_template("contact")
    end
  end

  describe "GET #landing_page" do
    it "responds successfully with an HTTP 200 status code" do
      get :landing_page
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the landing_page template" do
      get :landing_page
      expect(response).to render_template("landing_page")
    end
  end

end