class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /positions
  # GET /positions.json
  def index
    @positions = Position.all
  end

  # GET /positions/1
  # GET /positions/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    def set_team
      @team = Team.find(current_user.team_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_params
      params.require(:position).permit(:name)
    end
end
