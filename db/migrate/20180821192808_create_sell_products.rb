class CreateSellProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_products do |t|
      t.references :sell, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
