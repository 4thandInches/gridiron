class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy, :player_make_stats, :player_stats, :game_stats, :make_game_stats]
  before_action :set_team

  # GET /games
  # GET /games.json
  def index
    @games = Game.where(team_id: @team.id)
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @stats = @game.stats.where(player_id: nil)
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  def player_stats
    @positions = Position.all
  end

  def game_stats
    @stat_types = StatType.last(10)
  end

  def player_make_stats
    params[:stat].each do |k, v|
      v.each do |key, value|
        value.each do |ke, va|
          stat = Stat.create!(player_id: k, game_id: @game.id, stat_type_id: ke, value: va) unless va == ""
        end
      end
    end
    redirect_to player_stats_game_path(@game)
  end

  def make_game_stats
    params[:stat].each do |k, v|
      Stat.create!(game_id: @game.id, stat_type_id: k, value: v) unless v == ""
    end
    redirect_to games_path
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        @game.update(team_id: @team.id)
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    def set_team
      @team = Team.find(current_user.team_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:opponent, :location, :time, :home)
    end


end
