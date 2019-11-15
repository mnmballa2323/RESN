class CreateRentalListingMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_media do |t|
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
