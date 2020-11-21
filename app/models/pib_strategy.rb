class PibStrategy < Strategy
  def calculate(country)
    country.pib / country.population
  end
end
