class Product < ApplicationRecord
  has_mamy :order_items, dependent: :destroy
end
