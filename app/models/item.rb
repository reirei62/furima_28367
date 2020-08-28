class Item < ApplicationRecord
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :state
  belongs_to_active_hash :delivery
  
  belongs_to :user
  has_one :purchase
  #空の投稿を保存できないようにする
  validates :image,:item_name,:content,:price, :category,:product_state_id,:delivery_fee_id,:shipper_area_id,:ship_days_id, presence: true

  #ジャンルの選択が「--」の時は保存できないようにする
  validates :category_id, :product_state_id,:delivery_fee_id,:shipper_area_id,:ship_days_id, numericality: { other_than: 1 } 
  
  #priceが300~9999999の範囲でしか保存できないようにする
  validates :price,
  numericality:{only_integer: true, greater_than: 299, less_than: 10000000}
end
