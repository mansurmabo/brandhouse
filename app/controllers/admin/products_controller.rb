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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(products_params)
      redirect_to [:admin, @product]
    else
      render 'edit'
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
