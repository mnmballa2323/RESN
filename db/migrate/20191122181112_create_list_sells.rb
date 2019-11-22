class CreateListSells < ActiveRecord::Migration[5.2]
  def change
    create_table :list_sells do |t|
      t.string :address
      t.string :unit_no
      t.string :state
      t.string :postal_code
      t.string :title
      t.string :price
      t.string :virtual_tour_url
      t.string :home_type
      t.string :finished_suqare_area
      t.string :lot_size
      t.string :year_built
      t.string :st_model_year
      t.string :hoa_dues
      t.string :basement_size
      t.string :garage_size
      t.string :description
      t.string :website
      t.string :my_views
      t.string :contact_no
      t.string :email

      t.timestamps
    end
  end
end
