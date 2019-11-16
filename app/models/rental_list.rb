class RentalList < ApplicationRecord
  belongs_to :user
  has_many :rental_listing_amenity_infos
  has_many :rental_listing_bedrooms
  has_many :rental_listing_images
  has_many :rental_listing_space_usages
  has_many :rental_listing_common_spaces

end
