json.extract! product, :id, :name, :serial_no, :created_at, :updated_at
json.url product_url(product, format: :json)
