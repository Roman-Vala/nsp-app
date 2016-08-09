json.array!(@customers) do |customer|
  json.extract! customer, :id, :company_name, :contact_name, :address, :city, :state, :post_code, :phone, :phone2, :email, :email2
  json.url customer_url(customer, format: :json)
end
