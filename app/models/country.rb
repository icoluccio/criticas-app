class Country < ApplicationRecord
  belongs_to :world, required: false

  has_many :analysts, through: :favorite_countries

  def high_income
    median_incomes.last
  end

  def low_income
    median_incomes.first
  end
end
