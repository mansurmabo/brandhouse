class CartsController < ApplicationController

  def add_to_cart
    product_id = params[:product_id]
    quantity = params[:quantity]
    add_to_session(product_id, quantity.to_i)
  end

  def index
    @carts = session[:carts]
  end

  def remove_product
    delete_product(params[:product_id])
    redirect_to :back
  end

  def destroy_cart
    session[:carts] = {}
    redirect_to :back
  end



  private

  def add_to_session(product_id, quantity)
    return session[:carts] = {product_id => quantity} if session[:carts].nil?
    return session[:carts][product_id] += quantity if session[:carts].has_key?(product_id)
    session[:carts] = session[:carts].merge({product_id => quantity})
  end

  def delete_product(product_id)
    session[:carts].delete product_id
  end



end
