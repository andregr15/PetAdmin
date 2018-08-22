class CreateServiceSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :service_schedules do |t|
      t.references :client, foreign_key: true
      t.datetime :date
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
