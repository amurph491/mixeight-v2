class AddGroupIdToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :group_id, :int
  end
end
