class CreateRentalListingCommonSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_common_spaces do |t|
      t.string :type

      t.timestamps
    end
  end
end
