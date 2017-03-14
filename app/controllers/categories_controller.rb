class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = @category.products
    @categories = Category.all
    @brands = Brand.all
  end
end
