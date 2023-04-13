class AddDessertIdToRecipes < ActiveRecord::Migration[6.1]
  def change
    #add's a dessert_type ID to each recipe
    add_column :recipes, :dessert_id, :integer
  end
end
