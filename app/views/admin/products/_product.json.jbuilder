json.extract! product, :id, :title, :image, :address, :sqft, :created_at, :updated_at
json.url product_url(product, format: :json)
