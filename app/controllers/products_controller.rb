class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end


  private

  def products_params
    params.require(:product).permit(:vendor_code, :title, :brand, :availability ,:price ,:description ,:image)
  end


end
