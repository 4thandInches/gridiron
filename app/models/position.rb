class Position < ActiveRecord::Base
  has_many :roles
  has_many :players, through: :roles

  def get_team_players(team)
    players.where(team_id: team.id)
  end

end
