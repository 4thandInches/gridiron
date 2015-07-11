json.array!(@situations) do |situation|
  json.extract! situation, :id, :time, :task
  json.url situation_url(situation, format: :json)
end
