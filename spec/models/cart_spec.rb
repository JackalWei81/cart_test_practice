require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe "購物車相關功能" do
    it "can add item to Cart" do
      cart = Cart.new
      expect(cart.empty?).to be true
      cart.add_item(1)
      expect(cart.empty?).to be false
    end

    it "加相同商品不會增加item數" do
      cart = Cart.new
      5.times do
        cart.add_item(1)
      end
      3.times do
        cart.add_item(2)
      end
      2.times do
        cart.add_item(3)
      end

      expect(cart.items.count).to be 3
      expect(cart.items.first.quantity).to be 5
      expect(cart.items.last.quantity).to be 2
    end
  end
end
