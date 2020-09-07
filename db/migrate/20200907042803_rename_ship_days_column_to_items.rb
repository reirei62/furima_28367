class RenameShipDaysColumnToItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items,:ship_days,:ship_days_id
  end
end
