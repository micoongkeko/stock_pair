# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all
Role.create(name: "user")
Role.create(name: "admin")


User.create( name: "NameX", role_id: "3", balance: "100", email: 'admin@admin.com', password: 'admin' )