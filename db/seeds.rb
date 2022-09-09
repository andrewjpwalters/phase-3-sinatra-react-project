puts "🌱 Seeding..."

# Seed your database here

Genre.create(name: "Action")
Genre.create(name: "Horror")
Genre.create(name: "Romance")
Genre.create(name: "Drama")
Genre.create(name: "Sci-fi")
Genre.create(name: "Thriller")
Genre.create(name: "Comedy")
Genre.create(name: "Western")
Genre.create(name: "Fantasy")
Genre.create(name: "Mystery")

rand(1..10).times do
    Movie.create(
        name: Faker::Movie.title,
        genre_id: rand(1..10),
        year: rand(1920..2022),
        comment: Faker::Lorem.sentence
    )
end

puts "✅ Done seeding!"
