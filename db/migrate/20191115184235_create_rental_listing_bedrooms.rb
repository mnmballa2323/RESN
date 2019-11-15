class CreateRentalListingBedrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_bedrooms do |t|
      t.string :type

      t.timestamps
    end
  end
end
