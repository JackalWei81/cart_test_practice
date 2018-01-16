class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  validates :address, presence: true


  def serial_generator(id)
    "OD#{id.to_s.rjust(10,'0')}"
  end

  def amount
    order_items.reduce(0) { |sum, item| sum + item.total_price }
  end
end
