class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)

    if @order.save
      render "it worked!"
    end
  end

  private

  def order_params
    params.require(:order).permit(:item, :giftee_email, :giftee_name)
  end
end
