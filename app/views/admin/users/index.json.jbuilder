json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :middle_name, :email
  json.url admin_user_url(user, format: :json)
end
