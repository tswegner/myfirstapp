require 'rails_helper'

  describe Product do

  # Tests for connections of products to orders and comments:
    it {is_expected.to have_many :orders}
    it {is_expected.to have_many :comments}

  # Tests for the validations of products:
    it { is_expected.to validate_presence_of :name }

  # Tests for the attributes of products:
  context "full product functions" do

    before { @product = Product.new(name: "testproduct", description: "testdescription", colour: "testcolour", price: "testprice")}

    it "should return everything" do
      expect(@product.name).to eq "testproduct"
      expect(@product.description).to eq "testdescription"
      expect(@product.colour).to eq "testcolour"
      expect(@product.price).to eq "testprice"
    end
  end

  context "product name works" do

    before { @product = Product.new(name: "testproduct")}

    it "should return product name" do
      expect(@product.name).to eq "testproduct"
    end
  end

  context "product description works" do

    before { @product = Product.new(description: "testdescription")}

    it "should return product description" do
      expect(@product.description).to eq "testdescription"
    end
  end

  context "product colour works" do

    before { @product = Product.new(colour: "testcolour")}

    it "should return product colour" do
      expect(@product.colour).to eq "testcolour"
    end
  end

  context "product price works" do

    before { @product = Product.new(price: "testprice")}

    it "should return product price" do
      expect(@product.price).to eq "testprice"
    end
  end

  context "full product fail" do

    before { @product = Product.new() }

    it "should return nothing" do
      expect(@product.name).to eq nil
      expect(@product.description).to eq nil
      expect(@product.colour).to eq nil
      expect(@product.price).to eq nil
    end
  end
end