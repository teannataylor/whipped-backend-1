puts "🌱 Seeding spices..."

# Seed your database here


#Dessert

dessert_list=[["Cake"], ["Muffin"], ["Cookies"], ["Savory"], ["Drinks"]]

dessert_list.each do |name|
    Dessert.create(name: name)
end
# d1= Dessert.create(dessert_type: "Cake")
# d2= Dessert.create(dessert_type: "Muffin")
# d3= Dessert.create(dessert_type: "Cookies")
# d4= Dessert.create(dessert_type: "Savory")
# d5= Dessert.create(dessert_type: "Drinks")



# Recipe

   recipe_list=[["Chocolate Ganache Cake ", "1 hr 55 mins" ,"
    2 - 1/3 cups organic all-purpose flour
    1 cup baking cocoa
    1 tsp baking powder
    2 tsp baking soda 
    1 - 1/4 tsp salt
    3 large eggs
    2 - 1/3 cup granulated sugar
    10 tbsp vegetable or canola oil
    1 - 1/3 cups whole milk
    1 - 1/3 cups brewed coffee
    3 tsp vanilla extract
    1 cup fresh strawberries (optional topping)
    ",
    "Combination of natural cocoa powder, nutty-flavored coffee, and creamy ganache",
    "https://i.pinimg.com/originals/b4/10/16/b41016ff06dd3d0d28bb7de3bf525205.jpg",
    "
    (1) In a medium bowl, whisk together the flour, salt, baking cocoa, baking powder, and baking soda. Set it aside.
    (2)In a separate, large bowl, whisk the eggs with the sugar. Gradually add oil and whisk until it's all combined. Add the milk, coffee, and vanilla extract, gently whisking with every addition
    ", 1],

    ["Red Velvet Cake  ","1 hr 30 mins" , "
    3 cups cake flour
    1 teaspoon baking soda
    2 Tablespoons unsweetened natural cococa powder
    1/2 teaspoon salt
    1/2 cup unsalted butter
    4 large eggs
    ",
    "Buttery red-tinted vanilla cake with cocoa flavors and cream cheese frosting ",
    "https://sallysbakingaddiction.com/wp-content/uploads/2015/02/red-velvet-cake-slice-1024x1536.jpg",
    "blah blah blahh ",1],
    
    ["Blueberry Muffins", "45 mins" , "
    Eggs
    Flour
    blueberries
    sugar
    ",
    "Soft, buttery blueberry muffins with ahint of lemon",
    "https://images.pexels.com/photos/13600669/pexels-photo-13600669.jpeg?auto=compress&cs=tinysrgb&w=600" ,
    "whisk whisk whisk", 2],
    
    ["Apple-Cinnamon Muffins", "53 mins" ,"
    Apple
    Cinnamon
    Sugar
    Flour",
    "Sweet and crisp cinnamon muffins, with flavors of vanilla and nutmeg",
    "https://images.pexels.com/photos/6625812/pexels-photo-6625812.jpeg?auto=compress&cs=tinysrgb&w=600",
    "stir stir stir", 2],

    ["Snickerdoodles","45 mins",
     "cinnamon
     sugar
    vanilla extract
    flour ",
    "Soft, buttery blueberry muffins with ahint of lemon",
    "https://www.livewellbakeoften.com/wp-content/uploads/2017/09/Pumpkin-Snickerdoodles-4.jpg",
     "whisk whisk whisk",3],
    
    ["Thumbprint Cookies", "53 mins" ,
    "
    jam
    almond 
    flour ",
    "Sweet and crisp cinnamon muffins, with flavors of vanilla and nutmeg",
    "https://i1.wp.com/www.livewellbakeoften.com/wp-content/uploads/2019/07/Thumbprint-Cookies-10-5.jpg?fit=1200%2C1200&ssl=1",
     "stir stir stir",3],

    [ "Crossiant","53 mins" ,"
    butter
    flour",
    "Sweet and crisp cinnamon muffins, with flavors of vanilla and nutmeg",
   "https://media.istockphoto.com/id/1001971972/photo/breakfast-with-croissants-coffee-orange-juice-and-berries.jpg?b=1&s=612x612&w=0&k=20&c=EBa_Qz-djd9oR-q05TaEEhvm6JDfPJ7Qq-HNyT53Cck=",
     "fold fold ",4]

   ]



recipe_list.each do |name, cook_time,ingredients,description,image,instructions,dessert_id|
    Recipe.create(name: name, cook_time: cook_time, ingredients: ingredients, description: description, image: image, instructions: instructions, dessert_id: dessert_id)
end

# movie_id: rand(1..IMDb_ID_LIST.length)

50.times do 
    rand(1..6).times do 
    Review.create(
        stars: rand(1..5),
        comment: Faker::Lorem.sentence,
        recipe_id: rand(1..recipe_list.length)
    )
    end
end
#   t.integer :stars
#       t.string :comment
#       t.integer :recipe_id
puts "✅ Done seeding Desserts!"
 