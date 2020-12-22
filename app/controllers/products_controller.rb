# Product class
class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: %i[show update destroy]
  def index
    @product = Product.all
    render json: @product
  end

  def show
    render json: @product
  end

  def create
    @product = Product.create product_params
    render json: @product
  end

  def update
    @product.update product_params
    render json: @product
  end

  def destroy
    @product.destroy
    render json: 204
  end

  private

  def product_params
    params.require(:product).permit(:product_code, :name, :brand, :quantity, :price, :category_id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
