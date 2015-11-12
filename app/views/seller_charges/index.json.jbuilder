json.array!(@seller_charges) do |seller_charge|
  json.extract! seller_charge, :id, :lot_invoice_num, :invoice_line_num, :line_sequence_num, :charge_amount
  json.url seller_seller_charge_url(seller_id: @seller.id, id: seller_charge.id, format: :json)
end
