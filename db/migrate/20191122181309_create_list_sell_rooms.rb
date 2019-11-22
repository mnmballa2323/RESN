class CreateListSellRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :list_sell_rooms do |t|
      t.string :type
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
