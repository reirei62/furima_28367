FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials }
    email                 { Faker::Internet.free_email }
    password { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    last_name             { '田中' }
    first_name            { '勇気' }
    kana_last_name        { 'タナカ' }
    kana_first_name       { 'ユウキ' }
    birth                 { '2019-09-07' }
  end
end
