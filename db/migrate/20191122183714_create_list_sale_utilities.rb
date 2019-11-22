class CreateListSaleUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :list_sale_utilities do |t|
      t.boolean :center
      t.boolean :solor
      t.boolean :wall
      t.boolean :none
      t.boolean :base_board
      t.boolean :radiant
      t.string :heat_pump
      t.boolean :other
      t.boolean :oil
      t.boolean :gas
      t.boolean :electric
      t.boolean :wood
      t.boolean :other
      t.boolean :none
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
