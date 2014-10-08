json.array!(@products) do |product|
  json.extract! product, :id, :name, :image, :cost, :price, :category_id, :minimum
  json.url product_url(product, format: :json)
end
