class Itinerary < ActiveRecord::Base
  has_many :situations
  accepts_nested_attributes_for :situations

end
