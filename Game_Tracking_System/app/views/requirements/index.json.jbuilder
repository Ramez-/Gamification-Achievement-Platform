json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :name, :description, :event_id, :rule_id
  json.url requirement_url(requirement, format: :json)
end
