class AddBuddyFieldsAndClubToMembers < ActiveRecord::Migration
  def change
    add_column :members, :wants_a_buddy, :string
    add_column :members, :buddy_member_id, :integer
    add_column :members, :club_name, :string
  end
end
