class AddAboutToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :about_me, :string
  end
end
