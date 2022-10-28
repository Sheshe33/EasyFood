# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Order.destroy_all
Meal.destroy_all
Menu.destroy_all
Category.destroy_all
User.destroy_all


#for User

puts "Destroying Users"
puts "Creating Users"

lea = User.create!(username: "Léa", email: "lea@gmail.com", password: "secret", role: "manager")
tom = User.create!(username: "Tom", email: "tom@gmail.com", password: "secret", role: "waiter")
sophie = User.create!(username: "Sophie", email: "sophie@gmail.com", password: "secret", role: "waiter")
peter = User.create!(username: "Peter", email: "peter@gmail.com", password: "secret", role: "waiter")
paul = User.create!(username: "Paul", email: "paul@gmail.com", password: "secret", role: "cook")
leo = User.create!(username: "Léo", email: "leo@gmail.com", password: "secret", role: "cook")


puts "#{User.count} users created!"


# for Categories

puts "Destroying Categories"
puts "Creating Categories"

food = Category.create!(name: "foods")
drink = Category.create!(name: "drinks")
dessert = Category.create!(name: "desserts")
entree = Category.create!(name: "entrees")
cocktail = Category.create!(name: "cocktails")
soft = Category.create!(name: "softs")
main_course = Category.create!(name: "main course")
side = Category.create!(name: "sides")

puts "#{Category.count} categories created!"

# for meal

puts "Destroying Meals"
puts "Creating Meals"

Meal.create!(name: "BABY ROMAINE SALAD", description: "shaved pecorino, toasted focaccia, garlic emulsion, basil oil", price: 16, stock: 50, category: entree, image_url: "https://www.cleaneatingkitchen.com/wp-content/uploads/2022/08/baby-romaine-salad-bowl-hero-scaled.jpg")
Meal.create!(name: "PAN SEARED SEA SCALLOPS", description: "lemon,saffron butter", price: 20, stock: 15, category: entree, image_url: "https://www.inspiredtaste.net/wp-content/uploads/2018/08/Pan-Seared-Scallops-Recipe-1200.jpg")
Meal.create!(name: "16 OZ RIBEYE", description: "ample marbling for a juicy experience", price: 60, stock: 35, category: main_course, image_url: "https://www.taylorsbutcherscunthorpe.com/wp-content/uploads/2020/05/cookedsteak.png")
Meal.create!(name: "HERB ROASTED HALF CHICKEN", description: "lemon thyme jus", price: 30, stock: 40, category: main_course, image_url: "https://i.pinimg.com/originals/8a/64/ca/8a64ca7c1d180e8be376e6ff1ee5a382.jpg" )
Meal.create!(name: "GREEN ASPARAGUS", description: "lemon zest", price: 10, stock: 22, category: side, image_url: "https://urbanblisslife.com/wp-content/uploads/2022/07/grilled-asparagus-done-with-lemon-1024x1280.jpg")
Meal.create!(name: "MUSHROOMS", description: "minced with herbs", price: 8, stock: 13, category: side, image_url: "https://umamigirl.com/wp-content/uploads/2018/11/The-Best-Sauteed-Mushrooms-Recipe-780-Umami-Girl.jpg")
Meal.create!(name: "CHEESECAKE", description: "cheesecake with red fruits", price: 12, stock: 21, category: dessert, image_url: "https://www.countrysidecravings.com/wp-content/uploads/2017/07/no-bake-vanilla-cheesecake-pic.jpg")
Meal.create!(name: "BROWNIE", description: "chocolate brownie with vanilla ice cream ", price: 13, stock: 15, category: dessert, image_url: "https://www.porrelli.com/wp-content/uploads/2020/10/AfterlightImage-8-1024x1536.jpg")
Meal.create!(name: "MOJITO", description: "rhum with mint, sugar, and perrier", price: 15, stock: 25, category: cocktail, image_url: "https://www.finedininglovers.fr/sites/g/files/xknfdk1291/files/styles/recipes_1200_800_fallback/public/2021-11/mojito%20-%20Fine%20Dining%20Lovers.jpg?itok=4mINchIp")
Meal.create!(name: "PINA COLADA", description: "rhum with pineapple juice and coco milk", price: 13, stock: 18, category: cocktail, image_url: "https://bakeitwithlove.com/wp-content/uploads/2022/07/Pina-Colada-Mocktail-sq.jpg")
Meal.create!(name: "TROPICAL SMOOTHIE", description: "fresh mango, orange and pineapple", price: 15, stock: 35, category: soft, image_url: "https://www.gimmesomeoven.com/wp-content/uploads/2015/04/Tropical-Smoothie-4.jpg")
Meal.create!(name: "GREEN SMOOTHIE", description: "fresh kale, kiwi and spinach", price: 15, stock: 30, category: soft, image_url: "https://joyfoodsunshine.com/wp-content/uploads/2019/07/green-smoothie-recipe-2.jpg")

puts "#{Meal.count} meals created!"

# for menu

puts "Destroying Menus"
puts "Creating Menus"

Menu.create!(name: "lunch menu", description: "main course + entree or dessert", price: 20)
Menu.create!(name: "dinner menu", description: "entree + main course + drink + dessert", price: 35)

puts "#{Menu.count} menus created!"

# for orders

puts "Destroying Orders"
puts "Creating Orders"


Order.create!(user: tom, status: "served", payment_status: "paid", total_price: 75, hour: Time.new(2022, 10, 28, 12, 30))
Order.create!(user: sophie, status: "served", payment_status: "unpaid", total_price: 75, hour: Time.new(2022, 10, 28, 13, 30))
Order.create!(user: peter, status: "served", payment_status: "paid", total_price: 75, hour: Time.new(2022, 10, 28, 14, 00))

puts "#{Order.count} orders created!"


