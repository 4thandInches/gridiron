require 'test_helper'

class PositionsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:one)
    @position = positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:positions)
  end

  test "should show position" do
    get :show, id: @position
    assert_response :success
  end
end
