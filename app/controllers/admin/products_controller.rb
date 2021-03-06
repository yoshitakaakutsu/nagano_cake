class Admin::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to products_show_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to products_show_
  end

  private

  def product_params
    params.require(:product).permit(:name, :image, :introduction, :price, :is_active)
  end
end
