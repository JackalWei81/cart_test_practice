require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe "Cart features" do
    it "can add item to Cart" do
      cart = Cart.new
      expect(cart.empty?).to be true
      cart.add_item(1)
      expect(cart.empty?).to be false
    end
  end
end
