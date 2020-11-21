FactoryBot.define do
  factory :world do
    countries { create_list(:country, 15) }
  end
end
