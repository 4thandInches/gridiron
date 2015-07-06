class OffensiveStatsController < ApplicationController
  before_action :set_offensive_stat, only: [:show, :edit, :update, :destroy]

  # GET /offensive_stats
  # GET /offensive_stats.json
  def index
    @offensive_stats = OffensiveStat.all
  end

  # GET /offensive_stats/1
  # GET /offensive_stats/1.json
  def show
  end

  # GET /offensive_stats/new
  def new
    @offensive_stat = OffensiveStat.new(player_id: params[:player_id])
  end

  # GET /offensive_stats/1/edit
  def edit
  end

  # POST /offensive_stats
  # POST /offensive_stats.json
  def create
    @offensive_stat = OffensiveStat.new(offensive_stat_params)

    respond_to do |format|
      if @offensive_stat.save
        format.html { redirect_to @offensive_stat, notice: 'Offensive stat was successfully created.' }
        format.json { render :show, status: :created, location: @offensive_stat }
      else
        format.html { render :new }
        format.json { render json: @offensive_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offensive_stats/1
  # PATCH/PUT /offensive_stats/1.json
  def update
    respond_to do |format|
      if @offensive_stat.update(offensive_stat_params)
        format.html { redirect_to @offensive_stat, notice: 'Offensive stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @offensive_stat }
      else
        format.html { render :edit }
        format.json { render json: @offensive_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offensive_stats/1
  # DELETE /offensive_stats/1.json
  def destroy
    @offensive_stat.destroy
    respond_to do |format|
      format.html { redirect_to offensive_stats_url, notice: 'Offensive stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offensive_stat
      @offensive_stat = OffensiveStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offensive_stat_params
      params.require(:offensive_stat).permit(:passing_yards, :passing_attempts, :pass_completions, :completion_percentage, :twenty_pass, :passing_td, :longest_pass, :sacks, :interceptions, :rushing_yards, :longest_rush, :rushing_attempts, :twenty_rush, :average_yards_rush, :rushing_td, :fumbles, :receiving_yards, :receptions, :targets, :drops, :receiving_td, :twenty_reception, :longest_reception, :average_reception, :player_id)
    end
end
