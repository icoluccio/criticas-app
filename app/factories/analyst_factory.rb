FactoryBot.define do
  factory :salieri_analyst do
    other_analyst { create(:analyst) }
    name { Faker::Artist.name }
  end
  factory :juanci_analyst do
    other_analyst { create(:analyst) }
    strategy
    name { Faker::Artist.name }
  end
  factory :pancake_analyst do
    other_analyst { create(:analyst) }
    strategy
    negative_strategy { create(:strategy) }
    name { Faker::Artist.name }
  end
end
