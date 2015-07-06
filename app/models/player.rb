class Player < ActiveRecord::Base
  belongs_to :position
  belongs_to :class_status
end
