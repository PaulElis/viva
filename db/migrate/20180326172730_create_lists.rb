class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :description
      t.string :location
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
