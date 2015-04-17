json.extract! @game, :id, :name, :game_id, :game_timezone, :url, :logo, :description, :created_at, :updated_at
json.event @game.events, :name, :event_id
json.state_metric @game.state_metrics :name
json.value_metric @game.value_metrics :name