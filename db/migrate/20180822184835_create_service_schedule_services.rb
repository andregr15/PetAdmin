class CreateServiceScheduleServices < ActiveRecord::Migration[5.2]
  def change
    create_table :service_schedule_services do |t|
      t.references :service_schedule, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
