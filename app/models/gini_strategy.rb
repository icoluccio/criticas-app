class GiniStrategy < Strategy
  def calculate(country)
    country.high_income / country.low_income
  end
end
