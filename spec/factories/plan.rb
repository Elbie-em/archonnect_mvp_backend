FactoryBot.define do
  factory :plan do
    name { Faker::Lorem.word }
    details { Faker::Lorem.sentence }
    architect_name { Faker::Name.name }
    rating { Faker::Number.between(from: 1, to: 6) }
    price { Faker::Number.between(from: 500, to: 200) }
    design_img_url { Faker::Internet.url }
    blueprint_one_url { Faker::Internet.url }
    blueprint_two_url { Faker::Internet.url }
  end
end
