class RemovePurchaseFromAddresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :addresses, :purchase_id_id, :string
  end
end
