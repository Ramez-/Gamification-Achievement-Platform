json.array!(@players) do |player|
  json.extract! player, :id, :player_id
  json.url player_url(player, format: :json)
end
