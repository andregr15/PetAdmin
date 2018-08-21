class CreateSellServices < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_services do |t|
      t.references :sell, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
