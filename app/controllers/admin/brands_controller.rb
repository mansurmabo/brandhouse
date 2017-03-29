class Admin::BrandsController < Admin::AdminController
  
  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brands_params)
    if @brand.save
      redirect_to admin_brands_path
    else
      render 'new'
    end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brands_params)
      redirect_to admin_brands_path
    else
      render 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to :back
  end

  private

  def brands_params
    params.require(:brand).permit(:title)
  end
end
