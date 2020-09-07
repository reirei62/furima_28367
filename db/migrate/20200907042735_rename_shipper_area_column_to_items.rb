class RenameShipperAreaColumnToItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items,:shipper_area,:shipper_area_id
  end
end
