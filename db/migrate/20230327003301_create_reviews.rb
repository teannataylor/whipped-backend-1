class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :comment
      t.integer :recipe_id #this is the foreign key; ties the review to the recipe
      t.timestamps
    end
  end
end
