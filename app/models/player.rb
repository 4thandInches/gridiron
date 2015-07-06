class Player < ActiveRecord::Base
  belongs_to :position
  belongs_to :class_status
  has_many :stats

  validates :first_name, :last_name, presence: true
  validates :jersey_number, uniqueness: true

  def get_stats_position

  end

end
