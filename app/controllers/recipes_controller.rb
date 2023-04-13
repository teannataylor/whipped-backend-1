class RecipesController < ApplicationController

#Routes
#Controllers: responsible for receiving a request and using the model to generate data needed for the view
#get request - all 


# t.string :name
#       t.string :cook_time
#       t.string :ingredients
#       t.string :description
#       t.text :instructions
#       t.string :image

#get request - all 
get "/recipes" do
    recipes=Recipe.all.order(created_at: :asc)
    recipes.to_json
end

# one specific recipe by ID
get "/recipes/:id" do 
    recipe = Recipe.find_by(id: params[:id])
    recipe.to_json
end

post "/recipes" do
    recipe = Recipe.create(
       name: params[:name],
       cook_time: params[:cook_time],
       ingredients: params[:ingredients],
       description: params[:description],
       instructions: params[:instructions],
       image: params[:image],
       dessert_id: params[:dessert_id]
    )
    recipe.to_json
end

patch "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.update(
        name: params[:name],
        cook_time: params[:cook_time],
        ingredients: params[:ingredients],
        description: params[:description],
        instructions: params[:instructions],
        image: params[:image],
        dessert_id: params[:dessert_id]

    )
    recipe.to_json
end

delete "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipe.to_json
end

# t.string :name
#       t.string :cook_time
#       t.string :ingredients
#       t.string :description
#       t.text :instructions
#       t.string :image
#       t.integer :dessert_type
end