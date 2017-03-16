class Admin::ProductsController < Admin::AdminController

  def index
    @products = Product.all
  end


  private

  def products_params
    params.require(:product).permit(:vendor_code, :title, :brand_id, :category_id, :availability ,:price ,:description ,{images: []})
  end
end
