require 'test_helper'

class PotatosControllerTest < ActionController::TestCase
  setup do
    @potato = potatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potato" do
    assert_difference('Potato.count') do
      post :create, potato: {  }
    end

    assert_redirected_to potato_path(assigns(:potato))
  end

  test "should show potato" do
    get :show, id: @potato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potato
    assert_response :success
  end

  test "should update potato" do
    patch :update, id: @potato, potato: {  }
    assert_redirected_to potato_path(assigns(:potato))
  end

  test "should destroy potato" do
    assert_difference('Potato.count', -1) do
      delete :destroy, id: @potato
    end

    assert_redirected_to potatos_path
  end
end
