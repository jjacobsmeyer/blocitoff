require 'faker'

# Create Users

user = User.new(
  name: "James Jacob",
  email: "jacobsmeyertech@gmail.com",
  password: "helloworld",
)
user.skip_confirmation!
user.save!

user = User.new(
  name: "Jermey Jacobs",
  email: "jasjackson@gmail.com",
  password: "helloworld",
)
user.skip_confirmation!
user.save!

users = User.all

# Create items
50.times do
  Item.create!(
    name: Faker::Lorem.sentence,
    user: users.sample
    )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
