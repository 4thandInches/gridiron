class Position < ActiveRecord::Base
  has_many :roles
  has_many :players, through: :roles

  def get_team_players(team)
    team_roles = self.roles.order(:depth_chart_position).joins(:player).where("players.team_id = #{team.id}")
    team_roles.map &:player

  end

  def sort_by_depth(positions)

  end

end
