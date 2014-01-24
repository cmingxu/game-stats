json.array!(@logins) do |login|
  json.extract! login, :id, :player_id, :app_id, :login_at, :locale, :country
  json.url login_url(login, format: :json)
end
