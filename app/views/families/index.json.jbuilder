json.array!(@families) do |family|
  json.extract! family, :id, :parent1_name, :parent2_name, :address1, :address2, :city, :state, :zipcode, :phone, :alt_phone, :trusted_adults, :referral, :notes
  json.url family_url(family, format: :json)
end
