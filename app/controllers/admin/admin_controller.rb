class Admin::AdminController < ApplicationController
  before_action :authenticate_admin!
  
  layout "admin"

  def index
    redirect_to admin_products_path
  end

end
