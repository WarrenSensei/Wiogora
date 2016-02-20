json.array!(@shirt_orders) do |shirt_order|
  json.extract! shirt_order, :id, :shirt_size, :number, :fulfilled, :house
  json.url shirt_order_url(shirt_order, format: :json)
end
