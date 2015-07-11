class Team < ActiveRecord::Base
  has_many :users
  has_many :players
  has_many :games
  has_many :stats, through: :games


  def red_zone_eff
    calculate_efficiency(53, 54)
  end

  def third_down_eff
    calculate_efficiency(55, 56)
  end

  def fourth_down_eff
    calculate_efficiency(57, 58)
  end

  private

      def calculate_efficiency(id_1, id_2)
        successes = stats.where(stat_type_id: id_1).sum(:value)
        attempts = stats.where(stat_type_id: id_2).sum(:value)
        decimal = sprintf "%.2f", attempts / successes
        decimal[2..-1]
      end


end
