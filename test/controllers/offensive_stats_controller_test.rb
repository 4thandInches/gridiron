require 'test_helper'

class OffensiveStatsControllerTest < ActionController::TestCase
  setup do
    @offensive_stat = offensive_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offensive_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offensive_stat" do
    assert_difference('OffensiveStat.count') do
      post :create, offensive_stat: { average_reception: @offensive_stat.average_reception, average_yards_rush: @offensive_stat.average_yards_rush, completion_percentage: @offensive_stat.completion_percentage, drops: @offensive_stat.drops, fumbles: @offensive_stat.fumbles, interceptions: @offensive_stat.interceptions, longest_pass: @offensive_stat.longest_pass, longest_reception: @offensive_stat.longest_reception, longest_rush: @offensive_stat.longest_rush, pass_completions: @offensive_stat.pass_completions, passing_attempts: @offensive_stat.passing_attempts, passing_td: @offensive_stat.passing_td, passing_yards: @offensive_stat.passing_yards, receiving_td: @offensive_stat.receiving_td, receiving_yards: @offensive_stat.receiving_yards, receptions: @offensive_stat.receptions, rushing_attempts: @offensive_stat.rushing_attempts, rushing_td: @offensive_stat.rushing_td, rushing_yards: @offensive_stat.rushing_yards, sacks: @offensive_stat.sacks, targets: @offensive_stat.targets, twenty_pass: @offensive_stat.twenty_pass, twenty_reception: @offensive_stat.twenty_reception, twenty_rush: @offensive_stat.twenty_rush }
    end

    assert_redirected_to offensive_stat_path(assigns(:offensive_stat))
  end

  test "should show offensive_stat" do
    get :show, id: @offensive_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offensive_stat
    assert_response :success
  end

  test "should update offensive_stat" do
    patch :update, id: @offensive_stat, offensive_stat: { average_reception: @offensive_stat.average_reception, average_yards_rush: @offensive_stat.average_yards_rush, completion_percentage: @offensive_stat.completion_percentage, drops: @offensive_stat.drops, fumbles: @offensive_stat.fumbles, interceptions: @offensive_stat.interceptions, longest_pass: @offensive_stat.longest_pass, longest_reception: @offensive_stat.longest_reception, longest_rush: @offensive_stat.longest_rush, pass_completions: @offensive_stat.pass_completions, passing_attempts: @offensive_stat.passing_attempts, passing_td: @offensive_stat.passing_td, passing_yards: @offensive_stat.passing_yards, receiving_td: @offensive_stat.receiving_td, receiving_yards: @offensive_stat.receiving_yards, receptions: @offensive_stat.receptions, rushing_attempts: @offensive_stat.rushing_attempts, rushing_td: @offensive_stat.rushing_td, rushing_yards: @offensive_stat.rushing_yards, sacks: @offensive_stat.sacks, targets: @offensive_stat.targets, twenty_pass: @offensive_stat.twenty_pass, twenty_reception: @offensive_stat.twenty_reception, twenty_rush: @offensive_stat.twenty_rush }
    assert_redirected_to offensive_stat_path(assigns(:offensive_stat))
  end

  test "should destroy offensive_stat" do
    assert_difference('OffensiveStat.count', -1) do
      delete :destroy, id: @offensive_stat
    end

    assert_redirected_to offensive_stats_path
  end
end
