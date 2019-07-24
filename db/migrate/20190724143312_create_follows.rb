class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.integer :mathematician_id
      t.integer :acolyte_id

      t.timestamps
    end
  end
end
