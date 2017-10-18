class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path
    else
      redirect_to new_product_path
    end
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
