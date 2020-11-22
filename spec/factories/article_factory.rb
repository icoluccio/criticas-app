FactoryBot.define do
  factory :article do
    analyst
    title { Faker::Book.title }
    figure { Faker::Number.decimal(l_digits: 2) }
  end
end
