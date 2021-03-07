puts "🌱Start seeding"

# Create a main sample user.
User.create!(name:  "Hunter",
             email: "hunter@hunter.com",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             activated:    true,
             activated_at: Time.zone.now)

# Generate a bunch of additional users.
50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated:    true,
               activated_at: Time.zone.now)
end

# Generate a bunch of microposts.
users = User.order(:created_at).take(6)
35.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

puts "🌻Finished seeding"
