class AddCategoryIdToCreation < ActiveRecord::Migration
  def change
    add_reference :creations, :category, index: true
    add_foreign_key :creations, :categories
  end
end
