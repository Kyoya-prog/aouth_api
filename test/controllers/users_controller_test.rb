require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { activated_at: @user.activated_at, deleted_at: @user.deleted_at, email: @user.email, lock_version: @user.lock_version, name: @user.name, password_digest: @user.password_digest, register_user: @user.register_user, role: @user.role, update_user: @user.update_user } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { activated_at: @user.activated_at, deleted_at: @user.deleted_at, email: @user.email, lock_version: @user.lock_version, name: @user.name, password_digest: @user.password_digest, register_user: @user.register_user, role: @user.role, update_user: @user.update_user } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
