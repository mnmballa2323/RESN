class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :message
      t.integer :stars
      t.belongs_to :service

      t.timestamps
    end
  end
end
