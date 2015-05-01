json.array!(@rules) do |rule|
  json.extract! rule, :id, :value, :operation, :mtype
  json.url rule_url(rule, format: :json)
end
