class ItemPurchase
  include ActiveModel::Model
  attr_accessor :token,:post_number,:prefecture,:cities,:house_number,:building,:telephone_number,:price,:item_id,:user_id,:purchase_id

  VALID_POST_REGEX= /\A\d{3}[-]\d{4}\z/
  VALID_TELEPHONE_REGEX= /\A\d{10}$|^\d{11}\z/
  with_options presence: true do
    validates :prefecture,:cities,:house_number,:item_id,:token
    validates :post_number, format: { with: VALID_POST_REGEX }
    validates :telephone_number, format: { with: VALID_TELEPHONE_REGEX }
  end

  def save
    purchase=Purchase.create(item_id: item_id,user_id: user_id)
    Address.create(post_number: post_number,prefecture: prefecture, cities: cities,house_number: house_number,building: building,telephone_number: telephone_number,purchase_id: purchase.id)
  end

end
