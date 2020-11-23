class Newspaper < ApplicationRecord
  has_many :analysts

  def create_edition!(country)
    select_analysts(country).each do |analyst|
      analyst.write(country)
    end
  end

  def select_analysts(country)
    analysts.select do |analyst|
      analyst.can_write?(country)
    end
  end
end
