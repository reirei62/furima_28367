class ChangeDatatypePurchaseIdOfAddress < ActiveRecord::Migration[6.0]
  def change
    change_column :addresses, :purchase_id_id, :string
  end
end
