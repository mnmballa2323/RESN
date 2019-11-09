class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|

      t.string :name, null: false
      t.text :description, null: false
      t.integer :delivery_time, null: false
      t.integer :revisions, null: false, default: 1
      t.decimal :price, null: false, precision: 8, scale: 2
      t.belongs_to :service
    
      t.timestamps
    end
  end
end
