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
  Team.create!(name: "Greyhounds", school: "North Surry", head_coach: "Dan McClendon", location: "Mount Airy, NC", division: "North West", conference: "NEC")
  User.create!(email: "test@test.com", password: "password", team_id: 2)

#games
  Game.create!(opponent: "Nevada", location: "Laramie, WY", time: DateTime.new(2015,9,5,19), home: true, team_id: 2)
  Game.create!(opponent: "UNLV", location: "Laramie, WY", time: DateTime.new(2015,9,12,19), home: true, team_id: 2)
  Game.create!(opponent: "Air Force", location: "Colorado Springs, CO", time: DateTime.new(2015,9,19,19), home: false, team_id: 2)
  Game.create!(opponent: "New Mexico", location: "Laramie, WY", time: DateTime.new(2015,9,26,19), home: true, team_id: 2)
  Game.create!(opponent: "Utah St", location: "Logan, UT", time: DateTime.new(2015,10,3,15), home: false, team_id: 2)
  Game.create!(opponent: "SDSU", location: "San Diego, CA", time: DateTime.new(2015,10,10,19), home: false, team_id: 2)
  Game.create!(opponent: "Boise St", location: "Boise, ID", time: DateTime.new(2015,10,17,15), home: false, team_id: 2)
  Game.create!(opponent: "Hawaii", location: "Honolulu, HI", time: DateTime.new(2015,10,24,19), home: false, team_id: 2)
  Game.create!(opponent: "San Jose St", location: "Laramie, WY", time: DateTime.new(2015,10,30,12), home: true, team_id: 2)
  Game.create!(opponent: "Colorado", location: "Boulder, CO", time: DateTime.new(2015,11,7,19), home: false, team_id: 2)
  Game.create!(opponent: "Texas", location: "Laramie, WY", time: DateTime.new(2015,11,14,12), home: true, team_id: 2)
  Game.create!(opponent: "Colorado St.", location: "Laramie, WY", time: DateTime.new(2015,11,28,15), home: true, team_id: 2)

  class_status_array = [1,2,3,4]
  15.times do
	  Itinerary.create!(name: "#{Faker::Date.forward(23)}")
  end

  52.times do
    Player.create!(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.last_name}", jersey_number: count,
                   phone_number: "#{Faker::PhoneNumber.phone_number}", email: "#{Faker::Name.first_name}@gmail.com", height: 1, weight: 1,
                   class_status_id: class_status_array.sample.to_i, team_id: 2)
    count += 1
  end

  Player.all.each do |p|
    Role.create(position_id: rand(1..16), player_id: p.id)
  end
end
