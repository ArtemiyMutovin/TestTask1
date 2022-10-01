class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :length, null: false
      t.float :filesize, null: false
      t.references :artist,foreign_key: true, index: true
      t.timestamps
    end
  end
end
