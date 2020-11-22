class PancakeAnalyst < Analyst
  belongs_to :strategy
  belongs_to :negative_strategy, class_name: 'Strategy', required: false

  def figure(country)
    strategy.calculate(country) if liked_country?(country)
    negative_strategy.calculate(country)
  end

  def liked_country?(country)
    liked_countries.include?(country)
  end

  def title
    "La columna económica de #{name}"
  end
end
