# frozen_string_literal: true

class Strategy < ApplicationRecord
  def calculate(_country)
    raise 'Definilo, capo'
  end
end
