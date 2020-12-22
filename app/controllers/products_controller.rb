class ProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @product = Product.all
    render json: @product
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.create(
      product_code: params[:product_code],
      name: params[:name],
      brand: params[:brand],
      quantity: params[:quantity],
      price: params[:price],
  )
  render json: @product
  end

  def update
    @product = Product.find(params[:id])
    @product.update(
      product_code: params[:product_code],
      name: params[:name],
      brand: params[:brand],
      quantity: params[:quantity],
      price: params[:price],
      category_id: params[:category_id]
        )
    render json: @product
  end

  def destroy
    @product = Product.all 
    @product = Product.find(params[:id])
    @product.destroy
    render json: @product
  end
end
