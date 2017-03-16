class Admin::ProductsController < Admin::AdminController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to [:admin, @product]
    else
      render 'new'
    end
  end


  private

  def products_params
    params.require(:product).permit(:vendor_code, :title, :brand_id, :category_id, :availability ,:price ,:description ,{images: []})
  end
end
