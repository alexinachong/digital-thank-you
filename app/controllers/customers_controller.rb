class CustomersController < ApplicationController

  def show
    @customer = Customer.find_by(id: params[:id])

    if @customer
      render :show
    else
      render json: @customer.errors.full_messages
    end
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render "it worked!"
    else
      render json: @customer.errors.full_messages
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email)
  end
end
