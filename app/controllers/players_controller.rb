class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy, :stats, :make_stats, :show_stats, :add_position, :position_added]
  before_action :set_positions_and_statuses, only: [:new, :edit, :create, :index, :add_position]
  before_action :set_team

  # GET /players
  # GET /players.json
  def index
    @players = @team.players.order(:last_name)
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  def add_position
  end

  def position_added
    @player.positions << Position.find(params[:position][:position_id])
    redirect_to players_path
  end

  def show_stats
    @games = @team.games
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
        @player.update(team_id: @team.id)
        role = Role.get_role(params, @player)
        role.update(depth_chart_position: role.next_available)
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

    def set_team
      @team = Team.find(current_user.team_id)
    end

    def set_positions_and_statuses
      @positions = Position.all
      @class_statuses = ClassStatus.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:first_name, :last_name, :jersey_number, :phone_number, :email, :weight, :height, :position_ids,
                                     :class_status_id, :game_id,
                                     roles_attributes: [ :position_id ])
    end
end
