class Player < ActiveRecord::Base
  belongs_to :position
  belongs_to :class_status
  has_many :offensive_stats
  has_many :defensive_stats
  has_many :special_teams_stats

  validates :first_name, :last_name, presence: true
  validates :jersey_number, uniqueness: true

end
