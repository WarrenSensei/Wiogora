json.array!(@registrations) do |registration|
  json.extract! registration, :id, :approved, :cancelled, :year, :returning, :cost, :insurance, :allergies, :health_details, :shirt_size, :before_care, :after_care, :dropoff_time, :pickup_time, :medical_release, :photo_release, :philosophy_release, :general_release, :notes
  json.url registration_url(registration, format: :json)
end
