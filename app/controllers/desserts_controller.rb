class DessertsController < ApplicationController

    #get all dessert types
    get "/desserts" do
        desserts=Dessert.all
        desserts.to_json
      end

    get "/desserts/:id"do

    dessert = Dessert.find(params[:id])
    dessert.to_json

end

    post "/desserts/:id" do
     dessert = Dessert.create(
         name: params[:name]
     )
     dessert.to_json
    end

    patch "/desserts/:id" do
        dessert = Dessert.find(params[:id])
        dessert.update(
            name: params[:name]
        )
        dessert.to_json
    end

   delete "/desserts/:id" do
        dessert = Dessert.find(params[:id])
        dessert.destroy
        dessert.to_json
    end

end

