# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
# Examples:
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_create_by!(
    email: "anoop.kashyap@terralogic.com", 
    password: "12345678",
    password_confirmation: "12345678",
    first_name: "Anoop", 
    last_name: "Kashyap", 
    admin: true
)
