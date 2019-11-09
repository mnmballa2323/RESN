class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
    	t.string :description, null: false, limit: 450
    	t.string :requirement_type, null: false, default: 'text'
    	t.boolean :is_mandatory, null: false, default: true
    	t.belongs_to :service

      t.timestamps
    end
  end
end
