json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :email, :encrypted_password, :salt, :role
  json.url account_url(account, format: :json)
end
