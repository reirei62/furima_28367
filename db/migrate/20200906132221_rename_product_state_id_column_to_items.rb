class RenameProductStateIdColumnToItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items,:product_state_id, :product_state
  end
end
