class Listing < ActiveRecord::Base

  belongs_to :category
  belongs_to :subcategory

  geocoded_by :full_address
  after_validation :geocoder

  def full_address

    [citystatepostcode].join(',  ')

  end

