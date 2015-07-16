class SubcategoriesController < ApplicationController


  def index
    @subcategories = Subcategory.all
  end
 
  def show
    @listings = Listing.where(subcategory_id: params[:id])
  end

  def find_by_category
    category = Category.find(params[:category_id])
    subcatagories = category.subcategories.find_all
    render json: { subcategories: subcategories}
  end



end
