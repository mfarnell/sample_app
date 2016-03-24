User.create!(name:  "Example User",
             email: "examples@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "Marvin",
             email: "marvin@clanof5.net",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@vaild.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end