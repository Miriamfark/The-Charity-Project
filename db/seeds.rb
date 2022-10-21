# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

donors = Donor.create([{ name: "Ben" }, { name: "Avi" }, { name: "Rachel" }])
donations = Donation.create([{ amount: 100 }, { amount: 50 }, { amount: 1 }])
recipients = Recipient.create([{ name: "Help the Hungry" }, { name: "Medical Research" }, { name: "Education for All" }])