class AddUserIdToCreation < ActiveRecord::Migration
  def change
    add_reference :creations, :user, index: true
    add_foreign_key :creations, :users
  end
end
