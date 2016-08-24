# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "example123", email: "ziv87@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "example345", email: "ziv88@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "example567", email: "ziv89@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "example789", email: "ziv90@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "example111", email: "ziv91@gmail.com", password: "password", password_confirmation: "password")
p "Test users created"