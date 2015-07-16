class RolesController < ApplicationController

  def destroy
    @role = Role.find(params[:id])
    @player = @role.player
    @role.destroy

    respond_to do |format|
      format.html { redirect_to add_position_player_path(@player), notice: 'Position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


end
