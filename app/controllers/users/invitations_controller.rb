class Users::InvitationsController < Devise::InvitationsController
  def create
    super do |r|
      r.team_id = current_user.team_id
      r.save!
    end
  end
end
