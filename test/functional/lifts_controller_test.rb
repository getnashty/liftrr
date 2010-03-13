require 'test_helper'

class LiftsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lift" do
    assert_difference('Lift.count') do
      post :create, :lift => { }
    end

    assert_redirected_to lift_path(assigns(:lift))
  end

  test "should show lift" do
    get :show, :id => lifts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => lifts(:one).to_param
    assert_response :success
  end

  test "should update lift" do
    put :update, :id => lifts(:one).to_param, :lift => { }
    assert_redirected_to lift_path(assigns(:lift))
  end

  test "should destroy lift" do
    assert_difference('Lift.count', -1) do
      delete :destroy, :id => lifts(:one).to_param
    end

    assert_redirected_to lifts_path
  end
end
