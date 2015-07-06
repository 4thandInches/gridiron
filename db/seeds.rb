# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user = User.create!(email: "test@test.com", password: "password")

Position.create(name: "QB")
Position.create(name: "OG")
Position.create(name: "OT")
Position.create(name: "TE")
Position.create(name: "HB")
Position.create(name: "FB")
Position.create(name: "WR")
Position.create(name: "C")

#Defense
Position.create(name: "DT")
Position.create(name: "DE")
Position.create(name: "LB")
Position.create(name: "SS")
Position.create(name: "FS")
Position.create(name: "CB")


#Special
Position.create(name: "K")
Position.create(name: "P")

#Class Status
ClassStatus.create(name: "Freshman")
ClassStatus.create(name: "Sophomore")
ClassStatus.create(name: "Junior")
ClassStatus.create(name: "Senior")
