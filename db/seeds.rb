# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# Seed data for Movies
10.times do
  Movie.create(
    name: Faker::Movie.title,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

# Seed data for Series
10.times do
  Serie.create(
    name: Faker::Book.title,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

# Seed data for DocumentaryFilms
10.times do
  DocumentaryFilm.create(
    name: Faker::Lorem.word,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

