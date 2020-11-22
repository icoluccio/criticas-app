class CreateAnalysts < ActiveRecord::Migration[6.0]
  def change
    create_table :analysts do |t|
      t.references :other_analyst, null: true
      t.references :newspaper, null: true, foreign_key: true
      t.references :strategy, null: true, foreign_key: true
      t.references :negative_strategy, null: true
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
