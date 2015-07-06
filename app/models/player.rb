class Player < ActiveRecord::Base
  belongs_to :position
  belongs_to :class_status
  has_many :offensive_stats
  has_many :defensive_stats
  has_many :special_teams_stats
  
end
