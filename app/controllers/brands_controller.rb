class BrandsController < ApplicationController

  def show
    @brand = Brand.find(params[:id])
    @products = @brand.products
    @brands = Brand.all
    @categories = Category.all
  end
end
