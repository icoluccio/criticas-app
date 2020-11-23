class World < ApplicationRecord
  has_many :countries
  def best(strategy)
    countries.max { |country| strategy.calculate(country) }
  end
end
