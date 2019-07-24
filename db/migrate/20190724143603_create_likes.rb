class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :mathlete_id
      t.integer :theorem_id

      t.timestamps
    end
  end
end
