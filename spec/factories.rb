FactoryGirl.define do
  # basic order factory + belongs_to product and user
  factory :order do
    user_id 123
    product_id 123
    user
    #product
  end

  # basic comment factory + belongs_to product and user
  factory :comment do
    user_id 123
    product_id 123
    body "testbody"
    rating 1
    user
    product
  end

  # basic user factory
  factory :user do
    id 123
    first_name "John"
    last_name  "Smith"
    email "johnsmith@test.com"
    password "12345678"
    sign_in_count 1

    # factory for creating orders after the creation of the user
    factory :user_with_orders do
      # orders_count declared as an transient attribute
      transient do
        orders_count 10
      end

      # definition for the creation of an order list per user
      after(:create) do |user, evaluator|
        create_list(:order, evaluator.orders_count, user: user)
      end
    end

    # factory for creating comments after the creation of the user
    factory :user_with_comments do
      # comments_count declared as an transient attribute
      transient do
        comments_count 10
      end

      # definition for the creation of an order list per user
      after(:create) do |user, evaluator|
        create_list(:order, evaluator.comments_count, user: user)
      end
    end
  end

  # basic product factory
  factory :product do
    id 123
    name "testproduct"
    description "testtext"
    colour "testcolour"
    price "testprice"

    # factory for creating orders after the creation of the product
    factory :product_with_orders do
      # orders_count declared as an transient attribute
      transient do
        orders_count 10
      end

      # definition for the creation of an order list per product
      after(:create) do |product, evaluator|
        create_list(:order, evaluator.orders_count, product: product)
      end
    end

    # factory for creating comments after the creation of the product
    factory :product_with_comments do
      # comments_count declared as an transient attribute
      transient do
        comments_count 10
      end

      # definition for the creation of an order list per product
      after(:create) do |product, evaluator|
        create_list(:order, evaluator.comments_count, product: product)
      end
    end
  end
end