json.array!(@games) do |game|
  json.extract! game, :id, :opponent, :location, :time, :home
  if game.home == true
    json.title "vs #{game.opponent}"
  else
    json.title "@ #{game.opponent}"
  end
  json.start game.time
  json.url game_url(game, format: :html)
end
