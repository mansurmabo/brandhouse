class PagesController < ApplicationController
  def show
    @products = Product.all
  end
end
