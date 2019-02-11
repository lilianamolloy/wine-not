json.extract! user_profile, :id, :first-name, :surname, :dob, :bio, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
