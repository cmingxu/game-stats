json.array!(@ftes) do |fte|
  json.extract! fte, :id, :player_id, :step, :pass_time, :app_id
  json.url fte_url(fte, format: :json)
end
