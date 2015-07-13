json.array!(@games) do |game|
  json.extract! game, :id, :opponent, :location, :time, :home
  json.title [game.opponent, game.location]
  json.start game.time
  json.url game_url(game, format: :html)
end
