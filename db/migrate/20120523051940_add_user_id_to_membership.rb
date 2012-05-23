class AddUserIdToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :user_id, :int
  end
end
