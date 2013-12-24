json.array!(@goals) do |goal|
  json.extract! goal, :id, :user_id, :description, :display_name, :club_name, :display_club, :request_buddy
  json.url goal_url(goal, format: :json)
end
