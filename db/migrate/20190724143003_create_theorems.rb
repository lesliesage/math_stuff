class CreateTheorems < ActiveRecord::Migration[5.2]
  def change
    create_table :theorems do |t|
      t.string :name
      t.string :application
      t.integer :mathlete_id

      t.timestamps
    end
  end
end
