json.array!(@state_metrics) do |state_metric|
  json.extract! state_metric, :id, :metric_id, :name, :description, :state
  json.url state_metric_url(state_metric, format: :json)
end
