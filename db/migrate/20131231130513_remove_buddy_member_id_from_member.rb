class RemoveBuddyMemberIdFromMember < ActiveRecord::Migration
  def change
        remove_column :members, :buddy_member_id, :integer
  end
end
