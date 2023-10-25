# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Book.delete_all

50.times do |n|
  Book.find_or_create_by(
    user_id: User.first.id,
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph_by_chars,
    written_at: Faker::Date.between(from: '1970-06-01', to: Date.today)
    )
end