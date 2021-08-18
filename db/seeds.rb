# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all
User.destroy_all

r1 = Role.create(name: "user")
r2 = Role.create(name: "admin")


User.create( name: "NameX", role_id: r1.id, balance: "100", email: 'admin1@admin.com', password: 'admin1' )
User.create( name: "NameY", role_id: r1.id, balance: "100", email: 'admin2@admin.com', password: 'admin1' )
User.create( name: "NameZ", role_id: r1.id, balance: "100", email: 'admin3@admin.com', password: 'admin1' )

User.create( name: "admin", role_id: r2.id, balance: "100", email: 'admin@admin.com', password: 'admin1' )

