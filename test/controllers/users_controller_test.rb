require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { bid_value: @user.bid_value, captain_id: @user.captain_id, contact: @user.contact, description: @user.description, email_id: @user.email_id, is_captain: @user.is_captain, name: @user.name, position: @user.position, skills: @user.skills }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { bid_value: @user.bid_value, captain_id: @user.captain_id, contact: @user.contact, description: @user.description, email_id: @user.email_id, is_captain: @user.is_captain, name: @user.name, position: @user.position, skills: @user.skills }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
