json.extract! product, :id, :name, :suggested_price, :special_offer, :serial_no, :supplier_id, :category_id, :description, :status, :click, :created_at, :updated_at
json.url product_url(product, format: :json)
