class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :building_type
      t.string :built_year
      t.integer :square_footage
      t.string :building_subtype
      t.string :building_type
      t.string :HOA_dues
      t.string :fee_includes
      t.boolean :HOA

      t.timestamps
    end
  end
end
