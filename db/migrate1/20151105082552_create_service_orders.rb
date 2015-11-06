class CreateServiceOrders < ActiveRecord::Migration
  def change
    create_table :service_orders do |t|
      t.decimal :amount
      t.boolean :amount_editable
      t.text :comments
      t.string :contact
      t.text :instructions
      t.string :name
      t.string :priority
      t.string :so_type
      t.string :user_note

      t.timestamps null: false
    end
  end
end
