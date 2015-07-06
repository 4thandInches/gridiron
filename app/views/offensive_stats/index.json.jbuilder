json.array!(@offensive_stats) do |offensive_stat|
  json.extract! offensive_stat, :id, :passing_yards, :passing_attempts, :pass_completions, :completion_percentage, :twenty_pass, :passing_td, :longest_pass, :sacks, :interceptions, :rushing_yards, :longest_rush, :rushing_attempts, :twenty_rush, :average_yards_rush, :rushing_td, :fumbles, :receiving_yards, :receptions, :targets, :drops, :receiving_td, :twenty_reception, :longest_reception, :average_reception
  json.url offensive_stat_url(offensive_stat, format: :json)
end
