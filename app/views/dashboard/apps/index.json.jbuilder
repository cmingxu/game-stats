json.array!(@apps) do |app|
  json.extract! app, :id, :name, :client_id, :key, :secret
  json.url app_url(app, format: :json)
end
