class RenameCategoryColumnToItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :category, :category_id
    rename_column :items,:product_state,:product_state_id
    rename_column :items, :delivery_fee, :delivery_fee_id
    rename_column :items, :shipper_area, :shipper_area_id
    rename_column :items, :ship_days,:ship_days_id
  end
end
