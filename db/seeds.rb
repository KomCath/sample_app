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
99.times do |n|
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
puts "🌻Finished seeding"
