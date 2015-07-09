json.array!(@teams) do |team|
  json.extract! team, :id, :name, :school, :head_coach, :location, :division, :conference
  json.url team_url(team, format: :json)
end
