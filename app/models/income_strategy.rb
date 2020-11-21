class IncomeStrategy < Strategy
  def calculate(country)
    country.high_income
  end
end
