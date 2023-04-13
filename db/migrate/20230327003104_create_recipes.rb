class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cook_time
      t.string :ingredients
      t.string :description
      t.text :instructions
      t.string :image
      t.timestamps
    end
  end
end
