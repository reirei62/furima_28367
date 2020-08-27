FactoryBot.define do
  factory :item do
      item_name             {Faker::Food.fruits}
      price                 {Faker::Number.between(from:300,to:999999)}
      content               {Faker::Lorem.sentence}
      category_id           {Faker::Number.between(from:101,to:111)}
      product_state_id      {Faker::Number.between(from:201,to:206)}
      delivery_fee_id       {Faker::Number.between(from:301,to:302)}
      shipper_area_id       {Faker::Number.between(from:1,to:47)}
      ship_days_id          {Faker::Number.between(from:401,to:403)}
      association :user


  end
end
