json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :seller_tax_id, :seller_uid, :status, :country_id, :vehicles_count, :sap_fi_id_num, :seller_company_id, :seller_type_id, :created_by, :last_updated_by, :adjusters_count, :copart_default, :created_at, :updated_at
  json.url seller_url(seller, format: :json)
end
