class AddDownloadsCountToSong < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :downloads_count, :integer
  end
end
