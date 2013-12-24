json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :phone_number, :email_address, :club_name, :user_id
  json.url member_url(member, format: :json)
end
