FactoryBot.define do
  factory :newspaper do
    analysts do
      [FactoryBot.create(:pancake_analyst),
       FactoryBot.create(:salieri_analyst),
       FactoryBot.create(:juanci_analyst)]
    end
  end
end
