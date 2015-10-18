# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



count = 0
# jersey_num = rand(1..999)


Position.create(name: "QB", code: "Quarterback")
Position.create(name: "HB", code: "Halfback")
Position.create(name: "FB", code: "Fullback")
Position.create(name: "WR", code: "Wide Receiver")
Position.create(name: "TE", code: "Tightend")

Position.create(name: "OG", code: "Offensive Guard")
Position.create(name: "OT", code: "Offensive Tackle")
Position.create(name: "C", code: "Center")

#Defense
Position.create(name: "DT", code: "Defensive Tackle")
Position.create(name: "DE", code: "Defensive End")
Position.create(name: "LB", code: "Linebacker")
Position.create(name: "SS", code: "Strong Safety")
Position.create(name: "FS", code: "Free Safety")
Position.create(name: "CB", code: "Cornerback")


#Special
Position.create(name: "K", code: "Kicker")
Position.create(name: "P", code: "Punter")

#Class Status
ClassStatus.create(name: "Freshman")
ClassStatus.create(name: "Sophomore")
ClassStatus.create(name: "Junior")
ClassStatus.create(name: "Senior")

#Stat Type Offense
StatType.create(name: "Passing Yards")
StatType.create(name: "Passing Attempts")
StatType.create(name: "Pass Completions")
StatType.create(name: "Completion %")
StatType.create(name: "20 + Yard Passes")
StatType.create(name: "Passing TD's")
StatType.create(name: "Longest Pass")
StatType.create(name: "Sacks Taken")
StatType.create(name: "INT Thrown")
StatType.create(name: "Rushing Yards")
StatType.create(name: "Longest Rush")
StatType.create(name: "20 + Yard Rush")
StatType.create(name: "Rushing Attempts")
StatType.create(name: "Avg. YD Per Rush")
StatType.create(name: "Rushing TD's")
StatType.create(name: "Fumbles")
StatType.create(name: "Receiving Yards")
StatType.create(name: "Receptions")
StatType.create(name: "Targets")
StatType.create(name: "Drops")
StatType.create(name: "Receiving TD's")
StatType.create(name: "20+ YD Receptions")
StatType.create(name: "Longest Reception")

#Stat Type Defense
StatType.create(name: "Tackles")
StatType.create(name: "Asst. Tackles")
StatType.create(name: "Combined Tackles")
StatType.create(name: "Sacks")
StatType.create(name: "Yards Lost on Sacks")
StatType.create(name: "Forced Fumbles")
StatType.create(name: "Fumble Recoveries")
StatType.create(name: "Pass Defended")
StatType.create(name: "Interceptions")
StatType.create(name: "Yards From Interception")
StatType.create(name: "Defensive TD")

#Special Teams
StatType.create(name: "Field Goals Made")
StatType.create(name: "Field Goals Attempted")
StatType.create(name: "Field Goal Make Percentage")
StatType.create(name: "Longest Field Goal")
StatType.create(name: "Field Goal Range 1-19")
StatType.create(name: "Field Goal Range 20-29")
StatType.create(name: "Field Goal Range 30-39")
StatType.create(name: "Field Goal Range 40-49")
StatType.create(name: "Field Goal Range 50 +")
StatType.create(name: "Extra Point Made")
StatType.create(name: "Extra Point Attempt")
StatType.create(name: "Extra Point Percentage")

#Punts??????
StatType.create(name: "Average Punt Distance")
StatType.create(name: "Average Net Returned Yards")
StatType.create(name: "Touchbacks")
StatType.create(name: "Punts inside RedZone")
StatType.create(name: "Longest Punt")
StatType.create(name: "Total Punts")

#Return Yards

StatType.create(name: "Punt Return Yards")
StatType.create(name: "Kick Return Yards")

#Team Stats
StatType.create(name: "Red Zone Trips")
StatType.create(name: "Red Zone Conversions")
StatType.create(name: "3rd Down Attempt")
StatType.create(name: "3rd Conversions")
StatType.create(name: "4th Down Attempt")
StatType.create(name: "4th Conversions")
StatType.create(name: "2 Point Attempt")
StatType.create(name: "2 Point Conversions")
StatType.create(name: "Offensive Snaps")
StatType.create(name: "Defensive Snaps")
StatType.create(name: "3rd Down Stops")
StatType.create(name: "4th Down Stops")
StatType.create(name: "Kicks Blocked")

# if Rails.env.development?
  Team.create!(name: "Cowboys", school: "University of Wyoming", head_coach: "Dan McClendon", location: "Laramie, WY", division: "West", conference: "Mountain West Conference")
  User.create!(email: "test@test.com", password: "password", team_id: 1)

#games
  Game.create!(opponent: "Nevada", location: "Laramie, WY", time: DateTime.new(2015,9,5,19), home: true, team_id: 1)
  Game.create!(opponent: "UNLV", location: "Laramie, WY", time: DateTime.new(2015,9,12,19), home: true, team_id: 1)
  Game.create!(opponent: "Air Force", location: "Colorado Springs, CO", time: DateTime.new(2015,9,19,19), home: false, team_id: 1)
  Game.create!(opponent: "New Mexico", location: "Laramie, WY", time: DateTime.new(2015,9,26,19), home: true, team_id: 1)
  Game.create!(opponent: "Utah St", location: "Logan, UT", time: DateTime.new(2015,10,3,15), home: false, team_id: 1)
  Game.create!(opponent: "SDSU", location: "San Diego, CA", time: DateTime.new(2015,10,10,19), home: false, team_id: 1)
  Game.create!(opponent: "Boise St", location: "Boise, ID", time: DateTime.new(2015,10,17,15), home: false, team_id: 1)
  Game.create!(opponent: "Hawaii", location: "Honolulu, HI", time: DateTime.new(2015,10,24,19), home: false, team_id: 1)
  Game.create!(opponent: "San Jose St", location: "Laramie, WY", time: DateTime.new(2015,10,30,12), home: true, team_id: 1)
  Game.create!(opponent: "Colorado", location: "Boulder, CO", time: DateTime.new(2015,11,7,19), home: false, team_id: 1)
  Game.create!(opponent: "Texas", location: "Laramie, WY", time: DateTime.new(2015,11,14,12), home: true, team_id: 1)
  Game.create!(opponent: "Colorado St.", location: "Laramie, WY", time: DateTime.new(2015,11,28,15), home: true, team_id: 1)

  class_status_array = [1,2,3,4]

  # 15.times do
	#   Itinerary.create!(name: "#{Faker::Date.forward(23)}")
  # end

  Event.create!(title: "Summer Camp", start: DateTime.new(2015,7,6), end: DateTime.new(2015,7,10), allDay: true)
  Event.create!(title: "Team Meeting", start: DateTime.new(2015,7,17), end: DateTime.new(2015,7,17), allDay: true)


def jersey_number
  jersey_number_array = []
  num = rand(1..99)
  unless jersey_number_array.include?(num)
    jersey_number_array << num
    return num
  end
end

Player.create!(first_name: "Cole", last_name: "Ledner", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "cole@gmail.com", height: '6\'2"', weight: 195,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
     Role.create(position_id: 1, player_id: 1)
    # count += 1
  # end

  # Player.all.each do |p|
  #   Role.create(position_id: rand(1..16), player_id: p.id)
  # end

Player.create!(first_name: "Paul", last_name: "Smitham", jersey_number: jersey_number,
                 phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "paul@gmail.com", height: '6\'0"', weight: 185,
                 class_status_id: class_status_array.sample.to_i, team_id: 1)
       Role.create(position_id: 1, player_id: 2)

Player.create!(first_name: "Rich", last_name: "Heller", jersey_number: jersey_number,
              phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "rich@gmail.com", height: '5\'11"', weight: 190,
              class_status_id: class_status_array.sample.to_i, team_id: 1)
       Role.create(position_id: 2, player_id: 3)

Player.create!(first_name: "Rand", last_name: "Reilley", jersey_number: jersey_number,
                 phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "rand@gmail.com", height: '5\'9"', weight: 175,
                 class_status_id: class_status_array.sample.to_i, team_id: 1)
        Role.create(position_id: 2, player_id: 4)

Player.create!(first_name: "Mike", last_name: "Hettinger", jersey_number: jersey_number,
                phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "mike@gmail.com", height: '5\'10"', weight: 220,
                class_status_id: class_status_array.sample.to_i, team_id: 1)
        Role.create(position_id: 3, player_id: 5)

Player.create!(first_name: "Seth", last_name: "Block", jersey_number: jersey_number,
                 phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "seth@gmail.com", height: '5\'11"', weight: 205,
                 class_status_id: class_status_array.sample.to_i, team_id: 1)
        Role.create(position_id: 3, player_id: 6)

Player.create!(first_name: "Jarrett", last_name: "MacGyver", jersey_number: jersey_number,
                phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "jarrett@gmail.com", height: '6\'5"', weight: 185,
                class_status_id: class_status_array.sample.to_i, team_id: 1)
        Role.create(position_id: 4, player_id: 7)

Player.create!(first_name: "John", last_name: "Carwright", jersey_number: jersey_number,
                 phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "john@gmail.com", height: '6\'2"', weight: 160,
                 class_status_id: class_status_array.sample.to_i, team_id: 1)
         Role.create(position_id: 4, player_id: 8)

Player.create!(first_name: "Tracy", last_name: "Trantow", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "tracy@gmail.com", height: '6\'3"', weight: 170,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
         Role.create(position_id: 4, player_id: 9)

Player.create!(first_name: "Eric", last_name: "Reinger", jersey_number: jersey_number,
                 phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "eric@gmail.com", height: '6\'1"', weight: 177,
                 class_status_id: class_status_array.sample.to_i, team_id: 1)
         Role.create(position_id: 4, player_id: 10)

Player.create!(first_name: "William", last_name: "Rodriguez", jersey_number: jersey_number,
                phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "william@gmail.com", height: '6\'2"', weight: 215,
                class_status_id: class_status_array.sample.to_i, team_id: 1)
          Role.create(position_id: 5, player_id: 11)

Player.create!(first_name: "Anthony", last_name: "Barrows", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "anthony@gmail.com", height:'6\'3"', weight: 222,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 5, player_id: 12)

Player.create!(first_name: "Russell", last_name: "Davis", jersey_number: jersey_number,
                phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "russell@gmail.com", height: '6\'0"', weight: 275,
                class_status_id: class_status_array.sample.to_i, team_id: 1)
        Role.create(position_id: 8, player_id: 13)

Player.create!(first_name: "Joe", last_name: "Rippin", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "joe@gmail.com", height: '6\'2"', weight: 256,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 8, player_id: 14)

Player.create!(first_name: "Scott", last_name: "Gutmann", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "scott@gmail.com", height: '6\'0"', weight: 235,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 6, player_id: 15)

Player.create!(first_name: "Chris", last_name: "Kutch", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "chris@gmail.com", height: '5\'11"', weight: 244,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 6, player_id: 16)

Player.create!(first_name: "Greg", last_name: "Stoltenberg", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "greg@gmail.com", height: '6\'1"', weight: 224,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 6, player_id: 17)

Player.create!(first_name: "Tim", last_name: "Schaefer", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "tim@gmail.com", height: '6\'7"', weight: 289,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 7, player_id: 18)

Player.create!(first_name: "Will", last_name: "Harvey", jersey_number: jersey_number,
                    phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "will@gmail.com", height: '6\'5"', weight: 283,
                    class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 7, player_id: 19)

Player.create!(first_name: "Richard", last_name: "Jakubowski", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "richard@gmail.com", height: '6\'4"', weight: 269,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 7, player_id: 20)

Player.create!(first_name: "Terry", last_name: "Wisoky", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "terry@gmail.com", height: '6\'3"', weight: 182,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 15, player_id: 21)

Player.create!(first_name: "James", last_name: "Collier", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "james@gmail.com", height: '5\'10"', weight: 175,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 16, player_id: 22)

Player.create!(first_name: "Justin", last_name: "Crona", jersey_number: jersey_number,
                phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "justin@gmail.com", height: '6\'2"', weight: 245,
                class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 9, player_id: 23)

Player.create!(first_name: "Fred", last_name: "Yundt", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "fred@gmail.com", height: '6\'1"', weight: 234,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 9, player_id: 24)

Player.create!(first_name: "Allen", last_name: "Parisian", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "allen@gmail.com", height: '6\'0"', weight: 223,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 9, player_id: 25)

Player.create!(first_name: "Ryan", last_name: "Von", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "ryan@gmail.com", height: '6\'3"', weight: 216,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 9, player_id: 26)

Player.create!(first_name: "Jim", last_name: "Quitzon", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "jim@gmail.com", height: '6\'5"', weight: 232,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 10, player_id: 27)

Player.create!(first_name: "Billy", last_name: "O'Conner", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "billy@gmail.com", height: '6\'4"', weight: 221,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 10, player_id: 28)

Player.create!(first_name: "Marcus", last_name: "Walker", jersey_number: jersey_number,
                    phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "marcus@gmail.com", height: '6\'1"', weight: 198,
                    class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 10, player_id: 29)

Player.create!(first_name: "Will", last_name: "Sauls", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "will@gmail.com", height: '6\'0"', weight: 195,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 11, player_id: 30)

Player.create!(first_name: "Daniel", last_name: "Corbett", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "daniel@gmail.com", height: '6\'2"', weight: 205,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 11, player_id: 31)

Player.create!(first_name: "George", last_name: "McNamara", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "george@gmail.com", height: '5\'11"', weight: 200,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 11, player_id: 32)

Player.create!(first_name: "Lee", last_name: "Crocker", jersey_number: jersey_number,
                phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "lee@gmail.com", height: '6\'1"', weight: 187,
                class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 11, player_id: 33)

Player.create!(first_name: "Sean", last_name: "Spells", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "sean@gmail.com", height: '6\'1"', weight: 190,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 12, player_id: 34)

Player.create!(first_name: "Travis", last_name: "Allen", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "travis@gmail.com", height: '6\'0"', weight: 184,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 12, player_id: 35)

Player.create!(first_name: "Tim", last_name: "Howington", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "tim@gmail.com", height: '5\'8"', weight: 166,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 13, player_id: 36)

Player.create!(first_name: "Bob", last_name: "Baskerville", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "bob@gmail.com", height: '5\'11"', weight:167,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 13, player_id: 37)

Player.create!(first_name: "Jimmy", last_name: "Breen", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "jimmy@gmail.com", height: '5\'10"', weight: 145,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 14, player_id: 38)

Player.create!(first_name: "Allen", last_name: "Anderson", jersey_number: jersey_number,
                    phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "allen@gmail.com", height: '5\'11"', weight: 180,
                    class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 14, player_id: 39)

Player.create!(first_name: "Justin", last_name: "Sebastian", jersey_number: jersey_number,
                   phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "justin@gmail.com", height: '5\'11"', weight: 190,
                   class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 14, player_id: 40)

Player.create!(first_name: "Greg", last_name: "Hodkiewicz", jersey_number: jersey_number,
                  phone_number: "#{Faker::Base.numerify('(###) ### ####')}", email: "greg@gmail.com", height: '6\'2"', weight: 175,
                  class_status_id: class_status_array.sample.to_i, team_id: 1)
           Role.create(position_id: 14, player_id: 41)
