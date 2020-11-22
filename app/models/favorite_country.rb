class FavoriteCountry < ApplicationRecord
  belongs_to :analyst
  belongs_to :country
end
