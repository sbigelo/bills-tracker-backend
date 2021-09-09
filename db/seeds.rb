# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bill.destroy_all

user = User.create(first_name: "Sean", last_name: "Bigelow", email: "sean.bigelow1@gmail.com")
bill1 = Bill.create(company_name: "Verizon", due_date: "04/04/2022", amount_due: "85", notes: "Pay ahead of time.", paid_status: true, user_id: 1)
bill2 = Bill.create(company_name: "City Water", due_date: "03/03/2022", amount_due: "20", notes: "No notes", user_id: 1, paid_status: true)

