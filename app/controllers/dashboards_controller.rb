class DashboardsController < ApplicationController
  before_action :team?
  before_action :set_team, only: [:index]

  def index
    @games = Game.where(team: @team)
  end

  def team?
    if current_user.team.nil?
      redirect_to new_team_path
    end
  end

  def set_team
    @team = Team.find(current_user.team_id)
  end


end
