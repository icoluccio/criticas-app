# frozen_string_literal: true

class PibStrategy < Strategy
  def calculate(country)
    country.pib / country.population
  end
end
