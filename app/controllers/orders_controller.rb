class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)

    @cart.items.each do |item|
      @order.order_items.build(product_id: item.product_id, quantity: item.quantity)
    end

    if @order.save
      session["my_cart_session_123"] = nil
      redirect_to pay_order_path(@order)
    else
      render "carts/checkout"
    end
  end

  def pay
    hash_key = "IMEWQ85tOUMaSje3226TIML30mI8UaxC"
    hash_iv = "WczMlEg9y3jrmxvp"
    @merchant_id = "32237946"
    @order = Order.find_by(id: params[:id])
    redirect_to root_path unless @order
  end

  private
  def order_params
    params.require(:order).permit(:name, :tel, :address)
  end

  def check_value(order)


  end
end
