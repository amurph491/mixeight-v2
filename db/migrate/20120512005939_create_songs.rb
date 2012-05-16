class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :bpm

      t.timestamps
    end
  end
end
