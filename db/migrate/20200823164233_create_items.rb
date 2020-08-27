class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references  :user,           foreign_key: true
      t.string      :name,           null: false
      t.integer     :price,          null: false
      t.text        :content,        null: false
      t.integer     :category,       null: false
      t.integer     :product_state,  null: false
      t.integer     :delivery_fee,   null: false
      t.integer     :shipper_area,   null: false
      t.integer     :ship_days,      null: false
      t.timestamps
    end
  end
end
