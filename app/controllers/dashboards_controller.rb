class DashboardsController < ApplicationController
  before_action :team?

  def index
  end

  def team?
    if current_user.team.nil?
      redirect_to new_team_path
    end
  end


end
