json.extract! supplier, :id, :name, :phone_number, :fax_number, :sales, :status, :comment, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
