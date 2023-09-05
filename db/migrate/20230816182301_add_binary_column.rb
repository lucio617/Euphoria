class AddBinaryColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :binary_data,:binary
  end
end
