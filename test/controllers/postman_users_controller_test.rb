require 'test_helper'

class PostmanUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postman_user = postman_users(:one)
  end

  test "should get index" do
    get postman_users_url
    assert_response :success
  end

  test "should get new" do
    get new_postman_user_url
    assert_response :success
  end

  test "should create postman_user" do
    assert_difference('PostmanUser.count') do
      post postman_users_url, params: { postman_user: { email: 'three@example.com', height: 150.3, name: 'User Three', weight: 56 } }
    end

    assert_redirected_to postman_user_url(PostmanUser.last)
  end

  test "should show postman_user" do
    get postman_user_url(@postman_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_postman_user_url(@postman_user)
    assert_response :success
  end

  test "should update postman_user" do
    patch postman_user_url(@postman_user), params: { postman_user: { email: @postman_user.email, height: @postman_user.height, name: @postman_user.name, weight: @postman_user.weight } }
    assert_redirected_to postman_user_url(@postman_user)
  end

  test "should destroy postman_user" do
    assert_difference('PostmanUser.count', -1) do
      delete postman_user_url(@postman_user)
    end

    assert_redirected_to postman_users_url
  end
end
