class ListingsController < ApplicationController
  
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save
    redirect_to @listing
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def search
    
  end 

  private 

  def listing_params
    params.require(:listing).permit(:title, :description, :city, :state, :postcode, :category_id, :subcategory_id)
  end


end

