class CreateListSellOpenVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :list_sell_open_visits do |t|
      t.date :date
      t.string :start_time
      t.string :end_date
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
