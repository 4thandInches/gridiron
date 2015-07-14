json.array!(@events) do |event|
  json.extract! event, :id, :title, :start, :end, :allDay
  json.url event_url(event, format: :html)
end
