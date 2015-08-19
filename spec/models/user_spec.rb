require 'rails_helper'

  describe User, type: :model do
  # Tests for connections of users to orders:
    #it {is_expected.to have_many :orders}
    it "user has 10 orders" do
      @user = FactoryGirl.create(:user_with_orders)
      expect(@user.orders.length).to eq 10
    end

  # Tests for the attributes of users:
  context "full user functions" do

    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    it "should return everything" do
      expect(@user.first_name).to eq "John"
      expect(@user.last_name).to eq "Smith"
      expect(@user.email).to eq "johnsmith@test.com"
      expect(@user.sign_in_count).to eq 1
      expect(@user.password).to eq "12345678"
    end
  end
end    
  