class CreateRentalLists < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_lists do |t|
      t.string :room_type
      t.string :person_capicty
      t.string :location
      t.string :propert_type
      t.string :property_type_cat
      t.boolean :is_dedicated
      t.string :guest_no_acc
      t.string :beedrooms_no
      t.string :bathrooms_no
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :state
      t.string :country
      t.string :descritption
      t.string :title

      t.timestamps
    end
  end
end
