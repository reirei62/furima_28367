class Delivery < ActiveHash::Base
  self.data =[
    {id:301, text: '着払い(購入者負担)' ,type:"burden"},
    {id:302 , text: '送料込み(出品者負担)',type:"burden"},

    {id: 1, name: '北海道',type: "prefecture"}, {id: 2, name: '青森県',type: "prefecture"}, {id: 3, name: '岩手県',type: "prefecture"},
    {id: 4, name: '宮城県',type: "prefecture"}, {id: 5, name: '秋田県',type: "prefecture"}, {id: 6, name: '山形県',type: "prefecture"},
    {id: 7, name: '福島県',type: "prefecture"}, {id: 8, name: '茨城県',type: "prefecture"}, {id: 9, name: '栃木県',type: "prefecture"},
    {id: 10, name: '群馬県',type: "prefecture"}, {id: 11, name: '埼玉県',type: "prefecture"}, {id: 12, name: '千葉県',type: "prefecture"},
    {id: 13, name: '東京都',type: "prefecture"}, {id: 14, name: '神奈川県',type: "prefecture"}, {id: 15, name: '新潟県',type: "prefecture"},
    {id: 16, name: '富山県',type: "prefecture"}, {id: 17, name: '石川県',type: "prefecture"}, {id: 18, name: '福井県',type: "prefecture"},
    {id: 19, name: '山梨県',type: "prefecture"}, {id: 20, name: '長野県',type: "prefecture"}, {id: 21, name: '岐阜県',type: "prefecture"},
    {id: 22, name: '静岡県',type: "prefecture"}, {id: 23, name: '愛知県',type: "prefecture"}, {id: 24, name: '三重県',type: "prefecture"},
    {id: 25, name: '滋賀県',type: "prefecture"}, {id: 26, name: '京都府',type: "prefecture"}, {id: 27, name: '大阪府',type: "prefecture"},
    {id: 28, name: '兵庫県',type: "prefecture"}, {id: 29, name: '奈良県',type: "prefecture"}, {id: 30, name: '和歌山県',type: "prefecture"},
    {id: 31, name: '鳥取県',type: "prefecture"}, {id: 32, name: '島根県',type: "prefecture"}, {id: 33, name: '岡山県',type: "prefecture"},
    {id: 34, name: '広島県',type: "prefecture"}, {id: 35, name: '山口県',type: "prefecture"}, {id: 36, name: '徳島県',type: "prefecture"},
    {id: 37, name: '香川県',type: "prefecture"}, {id: 38, name: '愛媛県',type: "prefecture"}, {id: 39, name: '高知県',type: "prefecture"},
    {id: 40, name: '福岡県',type: "prefecture"}, {id: 41, name: '佐賀県',type: "prefecture"}, {id: 42, name: '長崎県',type: "prefecture"},
    {id: 43, name: '熊本県',type: "prefecture"}, {id: 44, name: '大分県',type: "prefecture"}, {id: 45, name: '宮崎県',type: "prefecture"},
    {id: 46, name: '鹿児島県',type: "prefecture"}, {id: 47, name: '沖縄県',type: "prefecture"},

    {id:401, date:'1~2日で発送',type: "date"},
    {id:402, date:'2~3日で発送',type: "date"},
    {id:403, date:'4~7日で発送',type: "date"}
  ]
end
