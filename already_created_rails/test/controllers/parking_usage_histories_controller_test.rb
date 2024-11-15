require "test_helper"

class ParkingUsageHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_usage_history = parking_usage_histories(:one)
  end

  test "should get index" do
    get parking_usage_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_usage_history_url
    assert_response :success
  end

  test "should create parking_usage_history" do
    assert_difference("ParkingUsageHistory.count") do
      post parking_usage_histories_url, params: { parking_usage_history: { amount: @parking_usage_history.amount, month: @parking_usage_history.month, parking_area_id: @parking_usage_history.parking_area_id, year: @parking_usage_history.year } }
    end

    assert_redirected_to parking_usage_history_url(ParkingUsageHistory.last)
  end

  test "should show parking_usage_history" do
    get parking_usage_history_url(@parking_usage_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_usage_history_url(@parking_usage_history)
    assert_response :success
  end

  test "should update parking_usage_history" do
    patch parking_usage_history_url(@parking_usage_history), params: { parking_usage_history: { amount: @parking_usage_history.amount, month: @parking_usage_history.month, parking_area_id: @parking_usage_history.parking_area_id, year: @parking_usage_history.year } }
    assert_redirected_to parking_usage_history_url(@parking_usage_history)
  end

  test "should destroy parking_usage_history" do
    assert_difference("ParkingUsageHistory.count", -1) do
      delete parking_usage_history_url(@parking_usage_history)
    end

    assert_redirected_to parking_usage_histories_url
  end
end
