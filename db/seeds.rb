# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
innocence = {name: "L'innocence", category: "french", address: "24 rue de la tour d'Auvergne Paris"}
dumbo =  {name: "Dumbo", category: "french", address: "64 rue Pigalle Paris"}
cuoco =  {name: "Il Cuoco Galante", category: "italian", address: "10 rue Condorcet Paris"}
zhao =  {name: "Zhao", category: "chinese", address: "12 rue des Vinaigriers Paris"}
sushi =  {name: "Sushi Shop", category: "japanese", address: "34 rue des Martyrs Paris"}

[innocence, dumbo, cuoco, zhao, sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
