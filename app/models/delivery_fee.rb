class DeliveryFee < ActiveHash::Base
  self.data =[
    {id:1, text: '着払い(購入者負担)' },
    {id:2 , text: '送料込み(出品者負担)'}

  ]
end
