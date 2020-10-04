class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :county
      t.string :district
      t.string :locality
      t.integer :paon
      t.string :saon
      t.integer :postcode
      t.string :street
      t.string :city

      t.timestamps
    end
  end
end
