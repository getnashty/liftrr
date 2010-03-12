require 'test_helper'

class MusclesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muscles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muscle" do
    assert_difference('Muscle.count') do
      post :create, :muscle => { }
    end

    assert_redirected_to muscle_path(assigns(:muscle))
  end

  test "should show muscle" do
    get :show, :id => muscles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => muscles(:one).to_param
    assert_response :success
  end

  test "should update muscle" do
    put :update, :id => muscles(:one).to_param, :muscle => { }
    assert_redirected_to muscle_path(assigns(:muscle))
  end

  test "should destroy muscle" do
    assert_difference('Muscle.count', -1) do
      delete :destroy, :id => muscles(:one).to_param
    end

    assert_redirected_to muscles_path
  end
end
