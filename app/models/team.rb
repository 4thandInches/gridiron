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

  def two_point_eff
    calculate_efficiency(59, 60)
  end

  def field_goal_eff

  end

  def punts_blocked

  end

  def passing_touchdowns
    calculate_total(6)
  end

  def passing_yards
    calculate_total(1)
  end

  def rushing_yards
    calculate_total(10)
  end

  def rushing_touchdowns
    calculate_total(15)
  end

  def total_tackles
    calculate_total(24)
  end

  def total_sacks
    calculate_total(27)
  end

  # def most_passing_yards
  #   quarterbacks = players.joins(:position).where(id: 1
  # end
  #
  # def get_team_players(team)
  #   team_roles = roles.order(:depth_chart_position).joins(:player).where("players.team_id = #{team.id}")
  #   team_roles.map &:player
  # end

  def most_rushing_yards

  end

  def most_receiving_yards

  end

  private

      def calculate_efficiency(id_1, id_2)
        successes = stats.where(stat_type_id: id_1).sum(:value)
        attempts = stats.where(stat_type_id: id_2).sum(:value)
        decimal = sprintf "%.2f", attempts / successes
        decimal[2..-1]
      end

      def calculate_total(id)
        stats.where(stat_type_id: id).sum(:value).to_i
      end


end
