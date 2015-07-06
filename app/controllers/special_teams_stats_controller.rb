class SpecialTeamsStatsController < ApplicationController
  before_action :set_special_teams_stat, only: [:show, :edit, :update, :destroy]

  # GET /special_teams_stats
  # GET /special_teams_stats.json
  def index
    @special_teams_stats = SpecialTeamsStat.all
  end

  # GET /special_teams_stats/1
  # GET /special_teams_stats/1.json
  def show
  end

  # GET /special_teams_stats/new
  def new
    @special_teams_stat = SpecialTeamsStat.new
  end

  # GET /special_teams_stats/1/edit
  def edit
  end

  # POST /special_teams_stats
  # POST /special_teams_stats.json
  def create
    @special_teams_stat = SpecialTeamsStat.new(special_teams_stat_params)

    respond_to do |format|
      if @special_teams_stat.save
        format.html { redirect_to @special_teams_stat, notice: 'Special teams stat was successfully created.' }
        format.json { render :show, status: :created, location: @special_teams_stat }
      else
        format.html { render :new }
        format.json { render json: @special_teams_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_teams_stats/1
  # PATCH/PUT /special_teams_stats/1.json
  def update
    respond_to do |format|
      if @special_teams_stat.update(special_teams_stat_params)
        format.html { redirect_to @special_teams_stat, notice: 'Special teams stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_teams_stat }
      else
        format.html { render :edit }
        format.json { render json: @special_teams_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_teams_stats/1
  # DELETE /special_teams_stats/1.json
  def destroy
    @special_teams_stat.destroy
    respond_to do |format|
      format.html { redirect_to special_teams_stats_url, notice: 'Special teams stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_teams_stat
      @special_teams_stat = SpecialTeamsStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_teams_stat_params
      params.require(:special_teams_stat).permit(:field_goals_attempted, :field_goals_made, :field_goal_percentage, :longest_field_goal, :range_one_to_nineteen, :range_twenty_to_twentynine, :range_thirty_to_thirtynine, :range_forty_to_fortynine, :range_fifty_plus, :point_made, :point_attempt, :punt, :total_yards_punt, :longest_punt, :average_yards_punt, :net_punt_average, :blocked_punt, :punts_in_redzone, :touchbacks, :fair_catch, :player_controller)
    end
end
