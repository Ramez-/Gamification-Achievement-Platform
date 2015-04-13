json.array!(@value_metrics) do |value_metric|
  json.extract! value_metric, :id, :metric_id, :min, :start, :max
  json.url value_metric_url(value_metric, format: :json)
end
