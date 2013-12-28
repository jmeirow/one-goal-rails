class ChangeUserIdOnMemberToInteger < ActiveRecord::Migration
  def change
    remove_column :members, :user_id, :string
    add_column :members, :user_id, :integer
  end
end
