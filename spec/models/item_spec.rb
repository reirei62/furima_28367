require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item= FactoryBot.build(:item)
    @item.image = fixture_file_upload('public/images/test.jpeg')
  end

  describe '商品出品' do
    context '出品がうまくいくとき' do
    
      it '全ての情報が記述されていれば出品できる' do
       expect(@item).to be_valid
      end

    end

    
    context '出品がうまくいかないとき' do
     
      it '画像が一枚もなければ出品できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it '商品名がなければ出品できない' do
        @item.item_name=""
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end

      it '商品の説明がなければ出品できない' do
        @item.content = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Content can't be blank")
      end

      it 'カテゴリーの情報がなければ出品できない' do
        @item.category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it '商品の状態についての情報がなければ出品できない' do
        @item.product_state_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Product state can't be blank")
      end

      it '配送料の負担についての情報がなければ出品できない' do
        @item.delivery_fee_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery fee can't be blank")
      end

      it '発送元の情報がなければ出品できない' do
        @item.shipper_area_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipper area can't be blank")
      end

      it '発送までの日数についての情報がなければ出品できない' do
        @item.ship_days_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship days can't be blank")
      end

      it '価格についての情報がなければ出品ができない' do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end

      it '価格が300より下なら出品できない' do
        @item.price = "10"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than 299")
      end
      it '価格が9999999より上なら出品できない' do
        @item.price = "10000000"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than 10000000")
      end
    end
  end
end