json.array!(@defensive_stats) do |defensive_stat|
  json.extract! defensive_stat, :id, :tackle, :asst_tackle, :combined_tackle, :sacks, :yards_lost_sack, :forced_fumble, :fumble_recovery, :pass_defend, :interception, :yards_return_interception, :touchdown
  json.url defensive_stat_url(defensive_stat, format: :json)
end
