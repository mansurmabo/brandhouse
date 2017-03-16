class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = @category.products.paginate(page: params[:page], per_page: 1).order(created_at: :desc)
    @categories = Category.all
    @brands = Brand.all
  end
end
