class AddKindToDiscounts < ActiveRecord::Migration[5.2]
  def change
    add_column :discounts, :kind, :integer
  end
end
