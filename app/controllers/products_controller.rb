class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]


  def index
    @products = Product.all
  end

  def show
    @orders = @product.orders
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, :notice => "Product successfully added"
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, :notice => "Product successfully updated"
    else
      render action: 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, :notice => "Product successfully deleted"
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :description, :price, :pic, :category)
    end

end

