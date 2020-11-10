# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rest-client'
require 'json'
require 'pry'

api_json = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=62c2295d9ec641e3860ddcffe4dbea76&type=appetizers&type=fingerfood&number=100")

results = JSON.parse(api_json)["results"]

results.each do |app|
    data = []
    object = {
        "title": app["title"],
        "image_src": app["image"],
        "rating": rand(25..200)
    }
    data << object
    Appetizer.create!(data)
end

User.create(name: "Test User", password: "password")

Favorite.create(user_id: 1, appetizer_id: 14)
Favorite.create(user_id: 1, appetizer_id: 23)
Favorite.create(user_id: 1, appetizer_id: 5)
Favorite.create(user_id: 1, appetizer_id: 88)
Favorite.create(user_id: 1, appetizer_id: 54)
Favorite.create(user_id: 1, appetizer_id: 25)
Favorite.create(user_id: 1, appetizer_id: 99)
Favorite.create(user_id: 1, appetizer_id: 77)
Favorite.create(user_id: 1, appetizer_id: 45)
Favorite.create(user_id: 1, appetizer_id: 47)
Favorite.create(user_id: 1, appetizer_id: 13)