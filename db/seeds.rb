# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values. The data can then be loaded with the bin/rails
# db:seed command (or created alongside the database with db:setup).
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'factory_bot'
require 'constants'

users = FactoryBot.create_list :user, 10

categories = Constants::MOVIE_CATEGORIES.map { |name| Category.find_or_create_by! name: }

20.times do
  movie = FactoryBot.create :movie

  users_number = rand 1..users.size
  users.sample(users_number).each { |user| user.rate_movie(movie, rand(1..10)).save! }

  categories_number = [5, categories.size].min
  categories.sample(categories_number).each do |category|
    category.add_movie movie
    category.save!
  end
end
