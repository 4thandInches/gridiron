class Player < ActiveRecord::Base
  belongs_to :position
  belongs_to :class_status
  has_many :stats

  validates :first_name, :last_name, presence: true
  validates :jersey_number, uniqueness: true

  def get_stat_types
    if position_id <= 8
      StatType.where(id: 1..23)
    elsif position_id <= 14
      StatType.where(id: 24.. 34)
    else
      StatType.where(id: 35..42)
    end
  end

end
