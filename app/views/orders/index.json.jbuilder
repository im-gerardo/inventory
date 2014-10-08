json.array!(@orders) do |order|
  json.extract! order, :id, :product_id, :priority_id, :confirm
  json.url order_url(order, format: :json)
end
