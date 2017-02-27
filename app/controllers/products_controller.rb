class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

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

  def show
    @product = Product.find(params[:id])
  end

  private

  def products_params
    params.require(:product).permit(:vendor_code, :title, :brand, :availability ,:price ,:description ,:image)
  end


end
