class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :u_name
      t.string :mail
      t.string :pass
      t.string :type

      t.timestamps
    end
  end
end
