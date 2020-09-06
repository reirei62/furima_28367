FactoryBot.define do
  factory :item_purchase do
    post_number             {"123-4567"}
    prefecture              {Faker::Number.between(from:1,to:47)}
    cities                  {Faker::Address.city_prefix}
    house_number            {Faker::Address.street_address}
    building                {Faker::Address.building_number}
    telephone_number        {Faker::Number.number(digits: 10)}
    token                   {Faker::Lorem.sentence}
  end
end
