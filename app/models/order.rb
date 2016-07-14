class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  validates :address, presence: true


  def serial_generator(id)
    "OD#{id.to_s.rjust(10,'0')}"
  end
end
