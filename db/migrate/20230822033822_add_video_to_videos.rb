class AddVideoToVideos < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :video, :string
  end
end
