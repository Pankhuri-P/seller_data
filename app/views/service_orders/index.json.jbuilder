json.array!(@service_orders) do |service_order|
  json.extract! service_order, :id, :amount, :amount_editable, :comments, :contact, :instructions, :name, :priority, :status_updated_date, :created_at, :updated_at, :country_id, :gl_type_id, :seller_id, :vehicle_id, :include_on_lots, :so_type, :user_note
  json.url seller_service_order_url(seller_id: @seller.id, id: service_order.id, format: :json)
end
