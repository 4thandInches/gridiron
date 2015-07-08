require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:one)
  end

  test "successful login" do
    get new_user_session_path
    assert_response :success

    post_via_redirect user_session_path, :user => { :email => @user.email, :password => "password"}
    assert_equal '/', path
    assert response.body.match("Signed in as email@email.com")


    get players_path
    assert_response :success
    post players_path, player: {first_name: "Zack", last_name: "Strickland", jersey_number: 88 }
    assert_redirected_to player_path(assigns(:player))

    follow_redirect!
    assert response.body.match("Zack")
    assert response.body.match("Strickland")
    assert response.body.match("Jersey number")

    assert_select "a[href='#{destroy_user_session_path}']"

    delete destroy_user_session_path
    assert_redirected_to root_path

  end
end
