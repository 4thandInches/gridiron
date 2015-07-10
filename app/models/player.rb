class Player < ActiveRecord::Base
  has_many :roles
  accepts_nested_attributes_for :roles

  has_many :memberships
  has_many :games, :through => :memberships
  has_many :positions, :through => :roles
  belongs_to :class_status
  has_many :stats
  belongs_to :team

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

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

  def primary_position_name
    positions.blank? ? "N/A" : positions.first.name
  end

  def class_name
    class_status.blank? ? "N/A" : class_status.name
  end


  def self.lead_player_for(stat_type)
    best_stat = stat_type.stats.order(:value).last

    player_name = (best_stat ? best_stat.player.full_name : "N/A")
    value = (best_stat ? best_stat.value.to_i : 0)
    return {player_name: player_name, value: value}
  end

end
