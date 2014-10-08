json.array!(@stocks) do |stock|
  json.extract! stock, :id, :product_id, :quantity, :reason_id
  json.url stock_url(stock, format: :json)
end
