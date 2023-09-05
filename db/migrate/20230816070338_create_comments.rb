class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :v_id
      t.string :u_name
      t.string :desc

      t.timestamps
    end
  end
end
