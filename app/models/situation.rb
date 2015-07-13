class Situation < ActiveRecord::Base
  belongs_to :itinerary, foreign_key: "itinerary_id"
end
