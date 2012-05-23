class AddGroupIdToSong < ActiveRecord::Migration
  def change
    add_column :songs, :group_id, :int
  end
end
