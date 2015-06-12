require 'test_helper'

class DistributesControllerTest < ActionController::TestCase
  setup do
    @distribute = distributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distribute" do
    assert_difference('Distribute.count') do
      post :create, distribute: { name: @distribute.name, path: @distribute.path }
    end

    assert_redirected_to distribute_path(assigns(:distribute))
  end

  test "should show distribute" do
    get :show, id: @distribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distribute
    assert_response :success
  end

  test "should update distribute" do
    patch :update, id: @distribute, distribute: { name: @distribute.name, path: @distribute.path }
    assert_redirected_to distribute_path(assigns(:distribute))
  end

  test "should destroy distribute" do
    assert_difference('Distribute.count', -1) do
      delete :destroy, id: @distribute
    end

    assert_redirected_to distributes_path
  end
end
