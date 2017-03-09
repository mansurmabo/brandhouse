class BaseController < ApplicationController
  before_action :brands, :categories

  def brands
    @brands = Brand.all
  end

  def categories
    @categories = Category.all
  end


end