class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_cart

  private
  def set_cart
    if session["my_cart_session_123"]
      @cart = Cart.build_from_hash(session["my_cart_session_123"])
    else
      @cart = Cart.new
    end
  end
end
