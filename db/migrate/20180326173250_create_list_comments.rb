class CreateListComments < ActiveRecord::Migration[5.1]
  def change
    create_table :list_comments do |t|
      t.integer :list_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
