require_relative "./mpesa/mpesa_express"
require_relative "./mpesa/mpesa_time"

class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
def index
  puts mpesa_time
  render json:{"all":"producets"}
end

def express
  phone=params[:phone]
  amount=params[:amount]
  puts phone
  puts amount
  puts amount.class
  data=mpesa_express(amount,phone)
  render json:data
end

def one_product
  render json:{"one":"product"}
end

end
