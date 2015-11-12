json.array!(@service_orders) do |service_order|
  json.extract! service_order, :id
  json.url seller_service_order_url(seller_id: @seller.id, id: service_order.id, format: :json)
end
