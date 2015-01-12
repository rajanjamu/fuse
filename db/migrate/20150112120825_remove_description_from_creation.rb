class RemoveDescriptionFromCreation < ActiveRecord::Migration
  def change
    remove_column :creations, :description, :string
  end
end
