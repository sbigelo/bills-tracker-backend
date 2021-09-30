# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bill.destroy_all


verizon = Bill.create(company_name: "Verizon", due_date: "04/04/2022", amount_due: "85", notes: "Pay ahead of time.", paid_status: "Paid", slug: "verizon-bill")
water = Bill.create(company_name: "City Water", due_date: "03/03/2022", amount_due: "20", notes: "No notes", paid_status: "Paid", slug: "water-bill")
sean = User.create(first_name: "Sean", last_name: "Bigelow", bill_id: verizon.id)
mary = User.create(first_name: "Mary", last_name: "Bigelow", bill_id: water.id)
jenny = User.create(first_name: "Jenny", last_name: "Matthews", bill_id: verizon.id)
matt = User.create(first_name: "Matt", last_name: "Johnny", bill_id: water.id)
gas = Bill.create(company_name: "City Gas", due_date: "06/23/2022", amount_due: "24", notes: "No notes", paid_status: "Not Paid", slug: "gas-bill")
