class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
