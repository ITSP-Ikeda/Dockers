require "test_helper"

class ParkingUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_user = parking_users(:one)
  end

  test "should get index" do
    get parking_users_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_user_url
    assert_response :success
  end

  test "should create parking_user" do
    assert_difference("ParkingUser.count") do
      post parking_users_url, params: { parking_user: { parking_user_name: @parking_user.parking_user_name, remark: @parking_user.remark } }
    end

    assert_redirected_to parking_user_url(ParkingUser.last)
  end

  test "should show parking_user" do
    get parking_user_url(@parking_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_user_url(@parking_user)
    assert_response :success
  end

  test "should update parking_user" do
    patch parking_user_url(@parking_user), params: { parking_user: { parking_user_name: @parking_user.parking_user_name, remark: @parking_user.remark } }
    assert_redirected_to parking_user_url(@parking_user)
  end

  test "should destroy parking_user" do
    assert_difference("ParkingUser.count", -1) do
      delete parking_user_url(@parking_user)
    end

    assert_redirected_to parking_users_url
  end
end
