json.array!(@formations) do |formation|
  json.extract! formation, :id, :team_id, :name
  json.url formation_url(formation, format: :json)
end
