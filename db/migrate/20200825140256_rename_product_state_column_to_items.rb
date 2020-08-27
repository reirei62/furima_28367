class RenameProductStateColumnToItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :product_state, :product_state_id
  end
end
