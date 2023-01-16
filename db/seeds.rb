# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts 'Seed: Deleting existing files...'

Evgenium.destroy_all


puts 'Seed: Creating Jeni...'

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673886807/profile-jeni_dskn2p.png")
evgenium = Evgenium.new(address: "1000 Sofia, Bulgaria")
evgenium.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
evgenium.save!
puts 'Seed: Jeni was born!'
