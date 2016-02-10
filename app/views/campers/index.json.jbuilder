json.array!(@campers) do |camper|
  json.extract! camper, :id, :family_id, :alt_address1, :alt_address2, :alt_city, :alt_state, :alt_zipcode, :email, :first_name, :last_name, :preferred_name, :pronoun, :birthdate, :faith, :congregation, :house, :house_preference, :house_q1, :house_q2, :house_q3, :friends
  json.url camper_url(camper, format: :json)
end
