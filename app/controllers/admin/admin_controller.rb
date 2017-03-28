class Admin::AdminController < ApplicationController

  layout "admin"

  def index
    redirect_to admin_products_path
  end

end
