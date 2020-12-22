class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category
  before_action :set_category, only: %i[show update destroy]

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    render json: @category
  end

  def create
    @category = Category.create category_params
    render json: @category
  end

  def update
    @category.update category_params
    render json: @category
  end

  def destroy
    @category.destroy
    render json: :no_content
  end

  private

  def category_params
    params.require(:category).permit(:category_code, :name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
