class AddKindToEmails < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :kind, :integer
  end
end
