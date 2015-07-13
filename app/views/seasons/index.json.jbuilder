json.array!(@seasons) do |season|
  json.extract! season, :id, :year, :team_id
  json.url season_url(season, format: :json)
end
