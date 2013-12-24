class RemoveClubNameFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :club_name, :string
  end
end
