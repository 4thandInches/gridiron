require 'test_helper'

class SpecialTeamsStatsControllerTest < ActionController::TestCase
  setup do
    @special_teams_stat = special_teams_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_teams_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_teams_stat" do
    assert_difference('SpecialTeamsStat.count') do
      post :create, special_teams_stat: { average_yards_punt: @special_teams_stat.average_yards_punt, blocked_punt: @special_teams_stat.blocked_punt, fair_catch: @special_teams_stat.fair_catch, field_goal_percentage: @special_teams_stat.field_goal_percentage, field_goals_attempted: @special_teams_stat.field_goals_attempted, field_goals_made: @special_teams_stat.field_goals_made, longest_field_goal: @special_teams_stat.longest_field_goal, longest_punt: @special_teams_stat.longest_punt, net_punt_average: @special_teams_stat.net_punt_average, point_attempt: @special_teams_stat.point_attempt, point_made: @special_teams_stat.point_made, punt: @special_teams_stat.punt, punts_in_redzone: @special_teams_stat.punts_in_redzone, range_fifty_plus: @special_teams_stat.range_fifty_plus, range_forty_to_fortynine: @special_teams_stat.range_forty_to_fortynine, range_one_to_nineteen: @special_teams_stat.range_one_to_nineteen, range_thirty_to_thirtynine: @special_teams_stat.range_thirty_to_thirtynine, range_twenty_to_twentynine: @special_teams_stat.range_twenty_to_twentynine, total_yards_punt: @special_teams_stat.total_yards_punt, touchbacks: @special_teams_stat.touchbacks }
    end

    assert_redirected_to special_teams_stat_path(assigns(:special_teams_stat))
  end

  test "should show special_teams_stat" do
    get :show, id: @special_teams_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_teams_stat
    assert_response :success
  end

  test "should update special_teams_stat" do
    patch :update, id: @special_teams_stat, special_teams_stat: { average_yards_punt: @special_teams_stat.average_yards_punt, blocked_punt: @special_teams_stat.blocked_punt, fair_catch: @special_teams_stat.fair_catch, field_goal_percentage: @special_teams_stat.field_goal_percentage, field_goals_attempted: @special_teams_stat.field_goals_attempted, field_goals_made: @special_teams_stat.field_goals_made, longest_field_goal: @special_teams_stat.longest_field_goal, longest_punt: @special_teams_stat.longest_punt, net_punt_average: @special_teams_stat.net_punt_average, point_attempt: @special_teams_stat.point_attempt, point_made: @special_teams_stat.point_made, punt: @special_teams_stat.punt, punts_in_redzone: @special_teams_stat.punts_in_redzone, range_fifty_plus: @special_teams_stat.range_fifty_plus, range_forty_to_fortynine: @special_teams_stat.range_forty_to_fortynine, range_one_to_nineteen: @special_teams_stat.range_one_to_nineteen, range_thirty_to_thirtynine: @special_teams_stat.range_thirty_to_thirtynine, range_twenty_to_twentynine: @special_teams_stat.range_twenty_to_twentynine, total_yards_punt: @special_teams_stat.total_yards_punt, touchbacks: @special_teams_stat.touchbacks }
    assert_redirected_to special_teams_stat_path(assigns(:special_teams_stat))
  end

  test "should destroy special_teams_stat" do
    assert_difference('SpecialTeamsStat.count', -1) do
      delete :destroy, id: @special_teams_stat
    end

    assert_redirected_to special_teams_stats_path
  end
end
