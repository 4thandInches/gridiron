class Stat < ActiveRecord::Base
  belongs_to :player
  belongs_to :stat_type
  belongs_to :game
end
