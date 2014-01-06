class RemoveDisplayNameFromGoalAndAddItToMember < ActiveRecord::Migration
  def change
    remove_column :goals, :display_name, :string
    add_column :members , :display_name, :string
  end
end
