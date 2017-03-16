class BrandsController < ApplicationController

  def show
    @brand = Brand.find(params[:id])
    @products = @brand.products.paginate(page: params[:page], per_page: 1).order(created_at: :desc)
    @brands = Brand.all
    @categories = Category.all
  end
end
