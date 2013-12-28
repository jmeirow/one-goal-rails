class RemoveMultipleFieldsFromGoal < ActiveRecord::Migration
  def change
    remove_column :goals, :display_name, :string
    remove_column :goals, :club_name, :string
    remove_column :goals, :display_club, :string
    remove_column :goals, :request_buddy, :string
  end
end
