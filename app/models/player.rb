class Player < ActiveRecord::Base
  has_many :roles
  has_many :memberships
  has_many :games, :through => :memberships
  has_many :positions, :through => :roles
  belongs_to :class_status
  has_many :stats

  validates :first_name, :last_name, presence: true
  validates :jersey_number, uniqueness: true

  def get_stat_types
    if positions.count < 2
      if positions.first.id <= 8
        StatType.where(id: 1..23)
      elsif positions.first.id <= 14
        StatType.where(id: 24.. 34)
      else
        StatType.where(id: 35..42)
      end
    else
      StatType.all
    end
  end

end
