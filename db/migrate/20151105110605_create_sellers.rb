class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :tax_id
      t.text :seller_uid
      t.text :status
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
