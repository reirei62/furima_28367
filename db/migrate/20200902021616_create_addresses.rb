class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string       :post_number,    null: false
      t.integer      :prefecture,     null: false
      t.string       :cities,         null: false
      t.string       :house_number,   null: false
      t.string       :building
      t.string       :telephone_number,null: false
      t.timestamps 
     end
  end
end
