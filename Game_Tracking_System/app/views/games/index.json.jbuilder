json.array!(@games) do |game|
  json.extract! game, :id, :name, :game_id, :game_timezone, :url, :logo
  json.url game_url(game, format: :json)
end
