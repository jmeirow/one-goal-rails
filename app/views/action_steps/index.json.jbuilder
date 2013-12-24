json.array!(@action_steps) do |action_step|
  json.extract! action_step, :id, :goal_id, :description, :target_date, :completed
  json.url action_step_url(action_step, format: :json)
end
