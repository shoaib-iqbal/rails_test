# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
[:developer, :manager, :qa].each do |role_name|
	Role.find_or_create_by(name: role_name)
end

10.times do
	u = User.create(email: Faker::Internet.email, password: Faker::Lorem.word, name: Faker::Name.name)
	u.add_role Role.all.sample.name.to_sym

	Project.create(title: Faker::Name.title)
end

