class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def create
    @Category = Category.create(
      category_code: params[:category_code],
      name: params[:name]
  )
  render json: @category
  end

  def update
    @category = Category.find(params[:id])
    @category.update(
        category_code: params[:category_code],
        name: params[:name]
        )
    render json: @category
  end

  def destroy
    @categories = Category.all 
    @category = Category.find(params[:id])
    @category.destroy
    render json: @categories
  end
end
