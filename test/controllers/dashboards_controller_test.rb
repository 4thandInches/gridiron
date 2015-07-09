require 'test_helper'

class DashboardsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    # assert_not_nil assigns(:dashboards)
  end
end
