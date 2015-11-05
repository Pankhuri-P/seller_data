class CreateSellerTypes < ActiveRecord::Migration
  def change
    create_table :seller_types do |t|

      t.timestamps null: false
    end
  end
end
