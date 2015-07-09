json.array!(@games) do |game|
  json.extract! game, :id, :opponent, :location, :time, :home
  json.url game_url(game, format: :json)
end
