class CreateStrategy < ActiveRecord::Migration[6.0]
  def change
    create_table :strategies do |t|
      t.string :type 
      t.timestamps
    end
  end
end
