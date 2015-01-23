json.array!(@users) do |user|
  json.extract! user, :id, :name, :description, :skills, :position, :is_captain, :email_id, :captain_id, :bid_value, :contact
  json.url user_url(user, format: :json)
end
