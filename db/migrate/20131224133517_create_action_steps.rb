class CreateActionSteps < ActiveRecord::Migration
  def change
    create_table :action_steps do |t|
      t.string :goal_id
      t.string :description
      t.date :target_date
      t.date :completed

      t.timestamps
    end
  end
end
