require 'rails_helper'

RSpec.describe ItemPurchase, type: :model do
  before do
    @user=FactoryBot.create(:user)
    @item= FactoryBot.create(:item,image: fixture_file_upload('public/images/test.jpeg'))
    @item_purchase=FactoryBot.build(:item_purchase,user_id: @user.id ,item_id: @item.id)
  end

  describe '商品購入' do
    context '商品購入がうまくいく時' do
      it '建物名を除く全ての情報が記載されていれば購入できる' do
        expect(@item_purchase).to be_valid
      end

      it 'buildingが空白でも購入できる' do
        @item_purchase.building=""
        expect(@item_purchase).to be_valid
      end
    end

    context '商品購入がうまく行かない時' do
      it '郵便番号がなければ購入できない' do
        @item_purchase.post_number = ""
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Post number can't be blank")
      end
      
      it '郵便番号にハイフンがなければ購入できない' do
        @item_purchase.post_number = '1234567'
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Post number is invalid")
      end

      it '都道府県が選択されていなければ購入できない' do
        @item_purchase.prefecture =nil
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Prefecture can't be blank")
      end

      it '市区町村がなければ購入できない'do
        @item_purchase.cities= ""
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Cities can't be blank")
      end

      it '番地がなければ購入できない' do
        @item_purchase.house_number = ""
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("House number can't be blank")
      end

      it '電話番号がなければ購入できない' do
        @item_purchase.telephone_number = ""
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Telephone number can't be blank")
      end
      it '電話番号は11桁か10桁でないと購入できない' do
        @item_purchase.telephone_number = '123456789'
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Telephone number is invalid")
      end
      it '電話番号にハイフンがあると購入できない' do
        @item_purchase.telephone_number = '123-4567-8910'
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Telephone number is invalid")
      end

      it 'トークンが空の場合購入できない' do
        @item_purchase.token=""
        @item_purchase.valid?
        expect(@item_purchase.errors.full_messages).to include("Token can't be blank")
      end
    end
  end

end
