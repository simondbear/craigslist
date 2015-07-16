class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @subcategories = Subcategory.all
  end

  def show 
    @listings = Listing.where(category_id: params[:id])
  end



end
