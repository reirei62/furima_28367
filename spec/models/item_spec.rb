require 'rails_helper'

describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '出品がうまくいくとき' do
    
      it '全ての情報が記述されていれば出品できる' do
        
      end

    end

    
    context '出品がうまくいかないとき' do
     
      it '画像が一枚なければ出品できない' do
      end

      it '商品の説明がなければ出品できない' do
      end

      it 'カテゴリーの情報がなければ出品できない' do
      
      end

      it '商品の状態についての情報がなければ出品できない' do
      end

      it '配送料の負担についての情報がなければ出品できない' do
      end

      it '発送元の情報がなければ出品できない' do
      end

      it '発送までの日数についての情報がなければ出品できない' do
      end

      it '価格についての情報がなければ出品ができない' do
      end

      it '価格が300~9999999の範囲でなければ出品できない' do
      end
    end
  end
end