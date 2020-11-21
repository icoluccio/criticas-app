# frozen_string_literal: true

class Analyst < ApplicationRecord
  belongs_to :other_analyst, class_name: 'Analyst', required: false
  belongs_to :strategy
  belongs_to :newspaper, required: false
  belongs_to :negative_strategy, class_name: 'Strategy', required: false

  def write(country)
    Articulo.new(titulo, figure(country), self)
  end

  def title
    raise 'Definilo, capo'
  end

  def figure(_country)
    raise 'Definilo, capo'
  end
end
