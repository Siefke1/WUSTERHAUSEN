class CategoriesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_params, only: :show


  def index
    @categories = Category.all
    authorize @categories
  end

  def show
    authorize @category
  end

  private

  def set_params
    @category = Category.find(params[:id])
  end
end
