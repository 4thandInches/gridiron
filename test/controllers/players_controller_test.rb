require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { class_status_id: @player.class_status_id, email: @player.email, first_name: @player.first_name, height: @player.height, jersey_number: @player.jersey_number, last_name: @player.last_name, phone_number: @player.phone_number, position_id: @player.position_id, weight: @player.weight }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { class_status_id: @player.class_status_id, email: @player.email, first_name: @player.first_name, height: @player.height, jersey_number: @player.jersey_number, last_name: @player.last_name, phone_number: @player.phone_number, position_id: @player.position_id, weight: @player.weight }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
