class CalendarsController < ApplicationController
  before_action :set_team

  def index
    @events = Event.where(team: @team)
  end

  private

    def set_team
      @team = Team.find(current_user.team_id)
    end

end
