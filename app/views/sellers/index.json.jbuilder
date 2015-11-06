json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :seller_tax_id, :seller_uid, :status, :country_id
  json.url seller_url(seller, format: :json)
end
