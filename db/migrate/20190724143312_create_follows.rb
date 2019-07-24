class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.integer :mathlete_id
      t.integer :acolyte_id

      t.timestamps
    end
    add_index :follows, :mathlete_id
    add_index :follows, :acolyte_id
    add_index :follows, [:mathlete_id, :acolyte_id], unique: true
  end
end
