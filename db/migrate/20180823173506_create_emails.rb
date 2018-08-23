class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.references :client, foreign_key: true
      t.string :subject
      t.text :body
      t.boolean :opened
      t.string :token

      t.timestamps
    end
    add_index :emails, :token, unique: true
  end
end
