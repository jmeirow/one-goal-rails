class ChangeUserIdOnMemberToInteger < ActiveRecord::Migration
  def change
    remove_column :members, :user_id, :string
    change_column :members, :user_id, :integer
  end
end
