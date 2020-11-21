class NameStrategy < Strategy
  def calculate(country)
    country.name.size * 10
  end
end
