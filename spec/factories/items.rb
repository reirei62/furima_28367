FactoryBot.define do
  factory :item do
      item_name             {Faker::Food.fruits}
      price                 {Faker::Number.between(from:300,to:999999)}
      content               {Faker::Lorem.sentence}
      category_id           {Faker::Number.between(from:1,to:11)}
      product_state_id      {Faker::Number.between(from:201,to:206)}
      delivery_fee_id       {Faker::Number.between(from:1,to:2)}
      shipper_area_id       {Faker::Number.between(from:1,to:47)}
      ship_days_id          {Faker::Number.between(from:1,to:3)}
      association :user
  end
end
