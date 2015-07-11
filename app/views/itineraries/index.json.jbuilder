json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :id, :name
  json.url itinerary_url(itinerary, format: :json)
end
