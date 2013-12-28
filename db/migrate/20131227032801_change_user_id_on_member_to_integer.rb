class ChangeUserIdOnMemberToInteger < ActiveRecord::Migration
  def change
    remove_column :members, :user_id, :string
  end
end
