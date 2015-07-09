class Position < ActiveRecord::Base
  has_many :roles
  has_many :players, through: :roles
end
