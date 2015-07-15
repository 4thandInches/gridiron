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
    calculate_efficiency(36, 35)
  end

  def total_turnovers
    calculate_total(9) + calculate_total(16)
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

  def total_fumble_recoveries
    calculate_total(30)
  end

  def total_forced_fumbles
    calculate_total(29)
  end

  def total_interceptions
    calculate_total(32)
  end

  def total_third_down_stops
    calculate_total(63)
  end

  def total_fourth_down_stops
    calculate_total(64)
  end

  def total_takeaways
    total_fumble_recoveries + total_interceptions
  end

  # player highs

  def most_passing_yards
    get_most("Passing Yards")
  end

  def most_rushing_yards
    get_most("Rushing Yards")
  end

  def most_receiving_yards
    get_most("Receiving Yards")
  end

  def most_catches
    get_most("Receptions")
  end

  def most_tackles
    get_most("Tackles")
  end

  def most_asst_tackles
    get_most("Asst. Tackles")
  end

  def most_interceptions
    get_most("Interceptions")
  end

  def most_sacks
    get_most("Sacks")
  end

  ### get_player

  def get_passer
    get_player("Passing Yards")
  end

  def get_receiver_yards
    get_player("Receiving Yards")
  end

  def get_receiver_catches
    get_player("Receptions")
  end

  def get_rusher
    get_player("Rushing Yards")
  end

  def get_tackler
    get_player("Tackles")
  end

  def get_asst_tackler
    get_player("Asst. Tackles")
  end

  def get_interceptor
    get_player("Interceptions")
  end

  def get_sacker
    get_player("Sacks")
  end

  private

      def calculate_efficiency(id_1, id_2)
        successes = stats.where(stat_type_id: id_1).sum(:value)
        attempts = stats.where(stat_type_id: id_2).sum(:value)
        decimal = sprintf "%.2f", attempts / successes
        decimal [2..-1]
      end

      def calculate_total(id)
        stats.where(stat_type_id: id).sum(:value).to_i
      end

      def get_player(stat_name)
        stat_type = StatType.find_by_name(stat_name)
        stat = stat_type.stats.joins(:player).where("players.team_id = #{id}").group(:player_id).order("sum(value)").last
        stat.blank? ? "N/A" : stat.player.full_name
      end

      def get_most(stat_name)
        stat_type = StatType.find_by_name(stat_name)
        stat = stat_type.stats.joins(:player).where("players.team_id = #{id}").group(:player_id).order("sum(value)").last
        stat.blank? ? "N/A" : stat.value.to_i
      end

end
