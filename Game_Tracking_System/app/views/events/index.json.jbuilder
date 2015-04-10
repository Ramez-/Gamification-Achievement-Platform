json.array!(@events) do |event|
  json.extract! event, :id, :name, :event_id, :event_description,
  json.url event_url(event, format: :json)
end
