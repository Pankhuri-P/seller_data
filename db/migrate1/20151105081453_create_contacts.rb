class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :primary_phone
      t.integer :primary_phone_ext
      t.integer :secondary_phone
      t.integer :secondary_phone_ext
      t.integer :mobile
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
