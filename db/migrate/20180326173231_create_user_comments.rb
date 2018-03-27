class CreateUserComments < ActiveRecord::Migration[5.1]
  def change
    create_table :user_comments do |t|
      t.integer :received_id
      t.integer :posted_id
      t.string :content

      t.timestamps
    end
  end
end
