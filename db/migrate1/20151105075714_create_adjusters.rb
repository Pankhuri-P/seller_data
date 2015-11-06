class CreateAdjusters < ActiveRecord::Migration
  def change
    create_table :adjusters do |t|
      t.string :position
      t.string :status

      t.timestamps null: false
    end
  end
end
