# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find_or_create_by!(id: 1)
projects_count = 3
projects_count.times { user.projects.create! } if user.projects.count < projects_count

# new case
user_2 = User.find_or_create_by!(id: 2)
Project.create_with(user: user_2, manager: user_2).find_or_create_by!(id: 10)
Project.create_with(user: user_2, manager: user_2).find_or_create_by!(id: 12)
Project.create_with(user: user, manager: user_2).find_or_create_by!(id: 11)

user_3 = User.find_or_create_by!(id: 3)
Project.create_with(user: user, manager: user_3).find_or_create_by!(id: 13)
