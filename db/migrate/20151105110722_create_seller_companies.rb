class CreateSellerCompanies < ActiveRecord::Migration
  def change
    create_table :seller_companies do |t|
      t.string :name
      t.integer :code
      t.string :country_id

      t.timestamps null: false
    end
  end
end
