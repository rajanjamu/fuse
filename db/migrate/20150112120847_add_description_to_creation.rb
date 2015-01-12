class AddDescriptionToCreation < ActiveRecord::Migration
  def change
    add_column :creations, :description, :text
  end
end
