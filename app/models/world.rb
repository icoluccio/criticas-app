class World < ApplicationRecord
  has_many :countries
  def el_mejor(strategy)
    countries.max { |country| strategy.calculate(country) }
  end
end
