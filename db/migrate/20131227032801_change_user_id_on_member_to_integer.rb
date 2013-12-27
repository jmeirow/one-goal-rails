class ChangeUserIdOnMemberToInteger < ActiveRecord::Migration
  def change
    change_column :members, :user_id, :integer
  end
end
