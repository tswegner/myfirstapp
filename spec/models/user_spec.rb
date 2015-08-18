require 'rails_helper'

  describe User do
  
  # Tests for connections of users to orders:
    it {is_expected.to have_many :orders}

  # Tests for the attributes of users:
  context "full user functions" do

    before { @user = User.new(first_name: "testfirst_name", last_name: "testlast_name", email: "testemail", sign_in_count: 1)}

    it "should return everything" do
      expect(@user.first_name).to eq "testfirst_name"
      expect(@user.last_name).to eq "testlast_name"
      expect(@user.email).to eq "testemail"
      expect(@user.sign_in_count).to eq 1
    end
  end

  context "user first_name works" do

    before { @user = User.new(first_name: "testfirst_name")}

    it "should return user first_name" do
      expect(@user.first_name).to eq "testfirst_name"
    end
  end

  context "user last_name works" do

    before { @user = User.new(last_name: "testlast_name")}

    it "should return user last_name" do
      expect(@user.last_name).to eq "testlast_name"
    end
  end

  context "user email works" do

    before { @user = User.new(email: "testemail")}

    it "should return user email" do
      expect(@user.email).to eq "testemail"
    end
  end

  context "user sign_in_count works" do

    before { @user = User.new(sign_in_count: 1)}

    it "should return user sign_in_count" do
      expect(@user.sign_in_count).to eq 1
    end
  end

  context "full user fail" do

    before { @user = User.new() }

    it "should return nothing" do
      expect(@user.first_name).to eq nil
      expect(@user.last_name).to eq nil
      expect(@user.email).to eq ""
      expect(@user.sign_in_count).to eq 0
    end
  end
end    
  