class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :transaction_id
      t.integer :price
      t.datetime :transfer_date
      t.string :property_type
      t.string :new_build
      t.string :duration
      t.string :ppd_status
      t.string :record_status
      t.references :property_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
