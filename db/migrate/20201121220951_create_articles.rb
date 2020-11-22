class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.text :title
      t.float :figure
      t.integer :analyst_id
      
      t.timestamps
    end
  end
end
