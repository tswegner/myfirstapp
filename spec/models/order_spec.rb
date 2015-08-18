require 'rails_helper'

  describe Order do

  # Tests for connections of order to products and users:
    it {is_expected.to belong_to :product}
    it {is_expected.to belong_to :user}

  # Tests for the attributes of orders:
  context "full order functions" do

    before { @order = Order.new(user_id: 1, product_id: 1)}

    it "should return everything" do
      expect(@order.user_id).to eq 1
      expect(@order.product_id).to eq 1
    end
  end

  context "order user_id functions" do

    before { @order = Order.new(user_id: 1)}

    it "should return user_id" do
      expect(@order.user_id).to eq 1
    end
  end

  context "order product_id functions" do

    before { @order = Order.new(product_id: 1)}

    it "should return product_id" do
      expect(@order.product_id).to eq 1
    end
  end

  context "full order fails" do

    before { @order = Order.new()}

    it "should return nothing" do
      expect(@order.user_id).to eq nil
      expect(@order.product_id).to eq nil
    end
  end
end