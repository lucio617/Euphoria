class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :genre
      t.string :moode
      t.string :type
      t.float :rating

      t.timestamps
    end
  end
end
