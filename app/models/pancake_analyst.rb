# frozen_string_literal: true

class PancakeAnalyst < Analyst
  def figure(country)
    strategy.calculate(country) if liked_country?(country)
    negative_strategy.calculate(country)
  end

  def liked_country?(country)
    liked_countries.include?(country)
  end

  def title
    "La columna económica de #{nombre}"
  end
end
