class Analyst < ApplicationRecord
  belongs_to :newspaper, required: false

  has_many :articles
  has_many :favorite_countries
  has_many :countries, through: :favorite_countries

  def write(country)
    Article.create!(title: title, figure: figure(country), analyst: self)
  end

  def title
    raise 'Definilo, capo'
  end

  def figure(_country)
    raise 'Definilo, capo'
  end

  def can_write?(country)
    (articles.size < 3) && !name.include?(country.name)
  end
end
