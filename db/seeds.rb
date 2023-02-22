require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  Restaurant.create!(name: Faker::Name.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample)
  # Review.create!(content: Faker::Name.name, rating: rand(0..5))
end

# 5.times do
#   Review.create!(content: Faker::Name.name, rating: rand(0..5))
# end
