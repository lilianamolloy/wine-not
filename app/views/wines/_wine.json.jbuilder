json.extract! wine, :id, :wine_id, :wine_name, :year, :description, :colour, :profile_id, :created_at, :updated_at
json.url wine_url(wine, format: :json)
