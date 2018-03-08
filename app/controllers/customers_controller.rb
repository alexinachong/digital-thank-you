class CustomersController < ApplicationController
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render "it worked!"
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email)
  end
end
