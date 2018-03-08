class OrdersController < ApplicationController

  def show
    @order = Order.find_by(id: params[:id])

    if @order
      render :show
    else
      render json: @order.errors.full_messages
    end 
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      render "it worked!"
    else
      render json: @order.errors.full_messages
    end
  end

  private

  def order_params
    params.require(:order).permit(:item, :giftee_email, :giftee_name)
  end
end
