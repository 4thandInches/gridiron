class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy, :stats, :make_stats, :show_stats]
  before_action :set_positions_and_statuses, only: [:new, :edit, :create]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  def show_stats
    @stats = @player.stats
  end

  # GET /players/new
  def new
    @player = Player.new
    @player.roles.build

  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)
    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new, locals: { :positions => @positions, :class_statuses => @class_statuses} }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    def set_positions_and_statuses
      @positions = Position.all
      @class_statuses = ClassStatus.all
      @depth_chart_positions = [1, 2, 3, 4, 5, 6]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:first_name, :last_name, :jersey_number, :phone_number, :email, :weight, :height, :position_ids,
                                     :class_status_id, :game_id,
                                     roles_attributes: [ :depth_chart_position, :position_id ])
    end
end
