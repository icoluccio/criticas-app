class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.bigint :population
      t.bigint :pib
      t.float :university_percentage
      t.json :median_incomes

      t.timestamps
    end
  end
end
