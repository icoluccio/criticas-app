FactoryBot.define do
  factory :salieri_analyst do
    other_analyst { create(:pancake_analyst) }
    name { Faker::Artist.name }
  end
  factory :juanci_analyst do
    strategy
    negative_strategy { create(:strategy) }
    name { Faker::Artist.name }
  end
  factory :pancake_analyst do
    strategy
    countries { FactoryBot.create_list(:country, 5) }
    negative_strategy { create(:strategy) }
    name { Faker::Artist.name }
  end
end
