class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end