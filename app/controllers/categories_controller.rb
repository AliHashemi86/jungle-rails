class CategoriesController < ApplicationController

  def show
    @categories = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

end