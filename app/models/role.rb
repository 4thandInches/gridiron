class Role < ActiveRecord::Base
  belongs_to :player
  belongs_to :position


  def next_available
    Role.where(position_id: position_id).count + 1
  end

  def self.get_role(params, player)
    Role.where(position_id: params[:player][:roles_attributes]["0"]["position_id"], player_id: player.id).first
  end

  def get_player_name
    player = Player.find(player_id)
    player.full_name
  end

  def get_player
    Player.find(player_id)
  end

end
