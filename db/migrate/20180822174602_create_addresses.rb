class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.integer :number
      t.string :neighborhood
      t.string :city
      t.string :zip
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
