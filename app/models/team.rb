class Team < ActiveRecord::Base
  has_many :users
  has_many :players
  has_many :games
  has_many :formations
  has_many :stats, through: :games


  def player_make_stats(params, game)
    unless params.nil?
      params.each do |k, v|
        v.each do |key, value|
          value.each do |ke, va|
            stat = Stat.create!(player_id: k, game_id: game.id, stat_type_id: ke, value: va) unless va == ""
          end
        end
      end
    end
  end

  def make_game_stats(params, game)
    params.each do |k, v|
      Stat.create!(game_id: game.id, stat_type_id: k, value: v) unless v == ""
    end
  end


  def red_zone_eff
    calculate_efficiency("Red Zone Conversions", "Red Zone Trips")
  end

  def third_down_eff
    calculate_efficiency("3rd Conversions", "3rd Down Attempt")
  end

  def fourth_down_eff
    calculate_efficiency("4th Conversions", "4th Down Attempt")
  end

  def two_point_eff
    calculate_efficiency("2 Point Conversions", "2 Point Attempt")
  end

  def field_goal_eff
    calculate_efficiency("Field Goals Made", "Field Goals Attempted")
  end

  def total_turnovers
    calculate_total("INT Thrown") + calculate_total("Fumbles")
  end


  def passing_touchdowns
    calculate_total("Passing TD's")
  end

  def passing_yards
    calculate_total("Passing Yards")
  end

  def rushing_yards
    calculate_total("Rushing Yards")
  end

  def rushing_touchdowns
    calculate_total("Rushing TD's")
  end

  def total_tackles
    calculate_total("Tackles")
  end

  def total_sacks
    calculate_total("Sacks")
  end

  def total_fumble_recoveries
    calculate_total("Fumble Recoveries")
  end

  def total_forced_fumbles
    calculate_total("Forced Fumbles")
  end

  def total_interceptions
    calculate_total("Interceptions")
  end

  def total_third_down_stops
    calculate_total("3rd Down Stops")
  end

  def total_fourth_down_stops
    calculate_total("4th Down Stops")
  end

  def total_takeaways
    total_fumble_recoveries + total_interceptions
  end

  def total_blocked_kicks
    calculate_total("Kicks Blocked")
  end

  def total_kick_return_yards
    calculate_total("Kick Return Yards")
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

      def calculate_efficiency(stat_type_1, stat_type_2)
        first_stat_type = StatType.find_by_name(stat_type_1)
        second_stat_type = StatType.find_by_name(stat_type_2)
        attempts = first_stat_type.stats.joins(:game).where("games.team_id = #{id}").sum(:value)
        successes = second_stat_type.stats.joins(:game).where("games.team_id = #{id}").sum(:value)
        decimal = sprintf "%.2f", attempts / successes
        return "N/A" if decimal[2..-1] == "N"
        decimal[2..-1]
      end

      def calculate_total(stat_type)
        stat_type = StatType.find_by_name(stat_type)
        stat_type.stats.joins(:game).where("games.team_id = #{id}").sum(:value).to_i
      end

      def get_player(stat_name)
        stat_type = StatType.find_by_name(stat_name)
        stat = stat_type.stats.group(:id).joins(:player).where("players.team_id = #{id}").group(:player_id).order("sum(value)").last
        stat.blank? ? "N/A" : stat.player.full_name
      end

      def get_most(stat_name)
        stat_type = StatType.find_by_name(stat_name)
        stat = stat_type.stats.group(:id).joins(:player).where("players.team_id = #{id}").group(:player_id).order("sum(value)").last
        stat.blank? ? "N/A" : stat.value.to_i
      end

end
