require 'test_helper'

class DefensiveStatsControllerTest < ActionController::TestCase
  setup do
    @defensive_stat = defensive_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defensive_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defensive_stat" do
    assert_difference('DefensiveStat.count') do
      post :create, defensive_stat: { asst_tackle: @defensive_stat.asst_tackle, combined_tackle: @defensive_stat.combined_tackle, forced_fumble: @defensive_stat.forced_fumble, fumble_recovery: @defensive_stat.fumble_recovery, interception: @defensive_stat.interception, pass_defend: @defensive_stat.pass_defend, sacks: @defensive_stat.sacks, tackle: @defensive_stat.tackle, touchdown: @defensive_stat.touchdown, yards_lost_sack: @defensive_stat.yards_lost_sack, yards_return_interception: @defensive_stat.yards_return_interception }
    end

    assert_redirected_to defensive_stat_path(assigns(:defensive_stat))
  end

  test "should show defensive_stat" do
    get :show, id: @defensive_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defensive_stat
    assert_response :success
  end

  test "should update defensive_stat" do
    patch :update, id: @defensive_stat, defensive_stat: { asst_tackle: @defensive_stat.asst_tackle, combined_tackle: @defensive_stat.combined_tackle, forced_fumble: @defensive_stat.forced_fumble, fumble_recovery: @defensive_stat.fumble_recovery, interception: @defensive_stat.interception, pass_defend: @defensive_stat.pass_defend, sacks: @defensive_stat.sacks, tackle: @defensive_stat.tackle, touchdown: @defensive_stat.touchdown, yards_lost_sack: @defensive_stat.yards_lost_sack, yards_return_interception: @defensive_stat.yards_return_interception }
    assert_redirected_to defensive_stat_path(assigns(:defensive_stat))
  end

  test "should destroy defensive_stat" do
    assert_difference('DefensiveStat.count', -1) do
      delete :destroy, id: @defensive_stat
    end

    assert_redirected_to defensive_stats_path
  end
end
