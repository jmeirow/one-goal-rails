class AddGoalIdToActionStepsAsInteger < ActiveRecord::Migration
  def change
    add_column :action_steps, :goal_id, :integer
  end
end
