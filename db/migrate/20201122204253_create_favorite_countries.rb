class CreateFavoriteCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_countries do |t|
      t.references :analyst, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
