class CreateServiceScheduleProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :service_schedule_products do |t|
      t.references :service_schedule, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
