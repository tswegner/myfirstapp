require 'rails_helper'

  describe Product do

  it {is_expected.to have_many :orders}
  it {is_expected.to have_many :comments}

end