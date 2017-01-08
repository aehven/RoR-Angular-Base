# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  User.create(email: "r#{i}@null.com",
              first_name: "rf#{i}",
              last_name: "rl#{i}",
              password: "password",
              role: "regular"
              )

  User.create(email: "m#{i}@null.com",
              first_name: "mf#{i}",
              last_name: "ml#{i}",
              password: "password",
              role: "manager"
              )

  User.create(email: "a#{i}@null.com",
              first_name: "af#{i}",
              last_name: "al#{i}",
              password: "password",
              role: "admin"
              )
end

User.all.each do |user|
  15.times do |i|
    Meal.create(user_id: user.id, description: "Meal #{i} for user #{user.email}", calories: 100+i, dt: Time.now)
  end
end
