json.array!(@seller_companies) do |seller_company|
  json.extract! seller_company, :id
  json.url seller_company_url(seller_company, format: :json)
end
