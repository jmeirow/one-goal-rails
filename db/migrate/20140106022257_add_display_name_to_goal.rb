class AddDisplayNameToGoal < ActiveRecord::Migration
  def change
     add_column :goals, :display_name, :string
  end
end
