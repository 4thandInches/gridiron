json.array!(@plays) do |play|
  json.extract! play, :id, :formation_id, :name, :pdf_file
  json.url play_url(play, format: :json)
end
