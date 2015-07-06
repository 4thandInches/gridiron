json.array!(@special_teams_stats) do |special_teams_stat|
  json.extract! special_teams_stat, :id, :field_goals_attempted, :field_goals_made, :field_goal_percentage, :longest_field_goal, :range_one_to_nineteen, :range_twenty_to_twentynine, :range_thirty_to_thirtynine, :range_forty_to_fortynine, :range_fifty_plus, :point_made, :point_attempt, :punt, :total_yards_punt, :longest_punt, :average_yards_punt, :net_punt_average, :blocked_punt, :punts_in_redzone, :touchbacks, :fair_catch
  json.url special_teams_stat_url(special_teams_stat, format: :json)
end
