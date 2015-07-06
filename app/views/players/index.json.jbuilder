json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :last_name, :jersey_number, :phone_number, :email, :weight, :height, :position_id, :class_status_id
  json.url player_url(player, format: :json)
end
