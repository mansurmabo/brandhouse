class ProductsController < BaseController
  # skip_before_action check_current_user only: [:index, :show]

  def index
    @products = Product.all.order(id: :desc)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def products_params
    params.require(:product).permit(:vendor_code, :title, :brand_id, :category_id, :availability ,:price ,:description ,{images: []})
  end


end
