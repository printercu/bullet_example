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
other_user = User.find_or_create_by!(id: 2)
project_with_same_relations = Project.create_with(user: other_user, manager: other_user).
  find_or_create_by!(id: 10)
project_with_same_relations = Project.create_with(user: other_user, manager: other_user).
  find_or_create_by!(id: 12)
project_with_different_relations = Project.create_with(user: user, manager: other_user).
  find_or_create_by!(id: 11)
