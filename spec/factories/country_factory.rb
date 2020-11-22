FactoryBot.define do
  factory :country do
    name { Faker::Address.country }
    population { Faker::Number.number(digits: 8) }
    university_percentage { Faker::Number.decimal(l_digits: 2) }
    pib { Faker::Number.number(digits: 9) }
    median_incomes { ((1..5).map { Faker::Number.number(digits: 8) }).sort }
  end
end
