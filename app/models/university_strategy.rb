# frozen_string_literal: true

class UniversityStrategy < Strategy
  def calculate(country)
    country.university_percentage
  end
end
