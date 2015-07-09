class Game < ActiveRecord::Base
  has_many :memberships
  has_many :players, :through => :memberships
  has_many :stats
end
