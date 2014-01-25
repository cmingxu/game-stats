json.array!(@players) do |player|
  json.extract! player, :id, :player_id, :name, :install_at, :locale, :language, :country
  json.url player_url(player, format: :json)
end
