class ProductsController < BaseController
  # skip_before_action check_current_user only: [:index, :show]

  def index
    @products = Product.paginate(page: params[:page], per_page: 1).order(id: :desc)
  end

  def show
    @product = Product.find(params[:id])
  end
end
