json.array!(@payments) do |payment|
  json.extract! payment, :id, :amount, :player_id, :app_id, :locale, :country
  json.url payment_url(payment, format: :json)
end
