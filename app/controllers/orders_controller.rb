class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)

    @cart.items.each do |item|
      @order.order_items.build(product_id: item.product_id, quantity: item.quantity)
    end

    if @order.save
      session["my_cart_session_123"] = nil
      redirect_to root_path
    else
      render "carts/checkout"
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :tel, :address)
  end
end
