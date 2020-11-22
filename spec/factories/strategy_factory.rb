FactoryBot.define do
  factory :strategy do
    type do
      %i[GiniStrategy IncomeStrategy
         NameStrategy PibStrategy UniversityStrategy].sample
    end
  end
end
