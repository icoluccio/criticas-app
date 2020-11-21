FactoryBot.define do
  factory :strategy do
    type do
      %i[gini_strategy income_strategy
         name_strategy pib_strategy university_strategy].sample
    end
  end
end
