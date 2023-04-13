class ReviewsController < ApplicationController
 
    #all reviews
 get "/reviews" do
   reviews=Review.all
   reviews.to_json
 end

 get "/reviews/:id" do
   review = Review.find(params[:id])
   review.to_json
 end

 post "/reviews/:id "do
   review = Review.create(
      stars: params[:stars],
      comment: params[:comment],
      recipe_id: params[:recipe_id]
   )
   review.to_json
end

patch "/reviews/:id" do
   review = Review.find(params[:id])
   review.update(
      stars: params[:stars],
      comment: params[:comment]
   )
   review.to_json
end

delete "/reviews/:id" do
   review = Review.find(params[:id])
   review.destroy
   review.to_json

end

# t.integer :stars
#       t.string :comment
#       t.integer :recipe_id
end