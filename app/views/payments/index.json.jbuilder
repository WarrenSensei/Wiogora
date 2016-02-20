json.array!(@payments) do |payment|
  json.extract! payment, :id, :family_id, :amount, :type
  json.url payment_url(payment, format: :json)
end
