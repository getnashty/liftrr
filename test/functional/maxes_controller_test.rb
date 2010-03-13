require 'test_helper'

class MaxesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create max" do
    assert_difference('Max.count') do
      post :create, :max => { }
    end

    assert_redirected_to max_path(assigns(:max))
  end

  test "should show max" do
    get :show, :id => maxes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => maxes(:one).to_param
    assert_response :success
  end

  test "should update max" do
    put :update, :id => maxes(:one).to_param, :max => { }
    assert_redirected_to max_path(assigns(:max))
  end

  test "should destroy max" do
    assert_difference('Max.count', -1) do
      delete :destroy, :id => maxes(:one).to_param
    end

    assert_redirected_to maxes_path
  end
end
