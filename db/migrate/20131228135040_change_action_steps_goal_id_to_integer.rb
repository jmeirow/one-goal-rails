class ChangeActionStepsGoalIdToInteger < ActiveRecord::Migration
  def change
    remove_column :action_steps, :goal_id, :integer
  end
end
