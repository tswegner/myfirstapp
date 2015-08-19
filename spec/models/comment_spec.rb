require 'rails_helper'

  describe Comment, type: :model do
  # Tests for the attributes of comments:
  context "full comment functions" do

    before(:each) do
      @comment = FactoryGirl.create(:comment)
    end

    it "should return everything" do
      expect(@comment.user_id).to eq 123
      expect(@comment.product_id).to eq 123
      expect(@comment.body).to eq "testbody"
      expect(@comment.rating).to eq 1
    end
  end
end 

#require 'rails_helper'
#
#  describe Comment do
#
#  # Tests for connections of comments to products and users
#    it {is_expected.to belong_to :product}
#    it {is_expected.to belong_to :user}
#
#  # Tests for the validations of comments:
#    it { is_expected.to validate_presence_of :body }
#    it { is_expected.to validate_presence_of :user }
#    it { is_expected.to validate_presence_of :product }
#    it { is_expected.to validate_numericality_of :rating }
#
#  # Tests for the attributes of comments:
#  context "full comment functions" do
#
#    before { @comment = Comment.new(user_id: 1, body: "testbody", rating: 1, product_id: 1)}
#
#    it "should return everything" do
#      expect(@comment.user_id).to eq 1
#     expect(@comment.body).to eq "testbody"
#      expect(@comment.rating).to eq 1
#      expect(@comment.product_id).to eq 1
#    end
#  end
#
#  context "comment user_id works" do
#
#    before { @comment = Comment.new(user_id: 1)}
#
#    it "should return comment user_id" do
#      expect(@comment.user_id).to eq 1
#    end
#  end
#
#  context "comment body works" do
#
#    before { @comment = Comment.new(body: "testbody")}
#
#    it "should return comment body" do
#      expect(@comment.body).to eq "testbody"
#    end
#  end
#
#  context "comment rating works" do
#
#    before { @comment = Comment.new(rating: 1)}
#
#    it "should return comment rating" do
#      expect(@comment.rating).to eq 1
#    end
#  end
#
#  context "comment product_id works" do
#
#    before { @comment = Comment.new(product_id: 1)}
#
#    it "should return comment product_id" do
#      expect(@comment.product_id).to eq 1
#    end
#  end
#
#  context "full comment fail" do
#
#    before { @comment = Comment.new() }
#
#    it "should return nothing" do
#      expect(@comment.user_id).to eq nil
#      expect(@comment.body).to eq nil
#      expect(@comment.rating).to eq nil
#      expect(@comment.product_id).to eq nil
#    end
#  end
#end