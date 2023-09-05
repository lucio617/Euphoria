class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.integer :profile_id
      t.integer :v_id

      t.timestamps
    end
  end
end
