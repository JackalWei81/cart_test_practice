class Cart
  attr_reader :items

  def initialize
    @items = Array.new
  end

  def add_item(product_id)
    #items 存取的是 attr_reader :items所產生的方法
    item = items.find{ |x| x.product_id == product_id }
    if item
      item.increment
    else
      items << CartItem.new(product_id)
    end
  end

  def empty?
    items.empty?
  end

  def total_price
    items.reduce(0){|sum , item| sum + item.total_price}
  end
end