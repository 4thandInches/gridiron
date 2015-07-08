require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  test "successful login" do
    get new_user_session_path

    assert_select "input[type='password']"
    post new_user_session_path, email: "test@test.com", password: "password"
    assert_redirected_to root_path

    follow_redirect!
    assert response.body.match("Signed in as test@test.com")


    get players_path
    assert_response :success
    post players_path, player: {first_name: "Zack", last_name: "Strickland", jersey_number: 88 }
    assert_redirected_to player_path

    follow_redirect!
    assert response.body.match("Zack")
    assert response.body.match("Strickland")
    assert response.body.match("Jersey number")

    assert_select "a[href='#{destroy_user_session_path}']"

    get destroy_user_session_path
    assert_redirected_to new_user_session_path
    
  end
end
