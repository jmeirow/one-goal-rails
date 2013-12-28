class ChangeActionStepsGoalIdToInteger < ActiveRecord::Migration
  def change
    change_column :action_steps, :goal_id, :integer
  end
end
