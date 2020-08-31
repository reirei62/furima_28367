class Item < ApplicationRecord
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :product_state
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :shipper_area
  belongs_to_active_hash :ship_days
  
  belongs_to :user
  has_one :purchase
  #空の投稿を保存できないようにする
  validates :image,:item_name,:content,:price, :category,:product_state,:delivery_fee,:shipper_area,:ship_days, presence: true

 
  
  #priceが300~9999999の範囲でしか保存できないようにする
  validates :price,
  numericality:{only_integer: true, greater_than: 299, less_than: 10000000}
end
