json.extract! shop, :id, :name, :address, :email, :description, :payment_option, :payment_details, :activation_code, :activated, :activated_at, :created_at, :updated_at
json.url shop_url(shop, format: :json)
