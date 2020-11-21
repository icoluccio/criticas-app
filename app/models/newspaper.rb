class Newspaper < ApplicationRecord
  has_many :analysts

  def create_edition
    select_analysts.each do |analyst|
      analyst.write(country)
    end
  end

  def select_analysts
    periodistas.first(3)
  end
end
