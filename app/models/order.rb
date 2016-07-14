class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  validates :address, presence: true
end
