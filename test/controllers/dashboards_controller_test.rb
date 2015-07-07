require 'test_helper'

class DashboardsControllerTest < ActionController::TestCase
  

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dashboards)
  end
end
