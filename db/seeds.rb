# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.destroy_all

School.create!(name: "Flatiron School", address:"11 Broadway")
School.create!(name: "NYU", address:"New York, NY 10003")
School.create!(name: "John Jay", address:"524 W 59th St, New York, NY 10019")
School.create!(name: "City College", address:"160 Convent Ave, New York, NY 10031")
School.create!(name: "Columbia University", address:"116th St & Broadway, New York, NY 10027")

Student.destroy_all

Student.create!(name: "Aaron", age:24, school_id: 26)
Student.create!(name: "Luke", age:30, school_id: 26)
Student.create!(name: "Hasibul", age:14, school_id: 27)
Student.create!(name: "Gabe", age:56, school_id: 27)
Student.create!(name: "Pavel", age:104, school_id: 28)
