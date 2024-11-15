require "application_system_test_case"

class ParkingUsageHistoriesTest < ApplicationSystemTestCase
  setup do
    @parking_usage_history = parking_usage_histories(:one)
  end

  test "visiting the index" do
    visit parking_usage_histories_url
    assert_selector "h1", text: "Parking usage histories"
  end

  test "should create parking usage history" do
    visit parking_usage_histories_url
    click_on "New parking usage history"

    fill_in "Amount", with: @parking_usage_history.amount
    fill_in "Month", with: @parking_usage_history.month
    fill_in "Parking area", with: @parking_usage_history.parking_area_id
    fill_in "Year", with: @parking_usage_history.year
    click_on "Create Parking usage history"

    assert_text "Parking usage history was successfully created"
    click_on "Back"
  end

  test "should update Parking usage history" do
    visit parking_usage_history_url(@parking_usage_history)
    click_on "Edit this parking usage history", match: :first

    fill_in "Amount", with: @parking_usage_history.amount
    fill_in "Month", with: @parking_usage_history.month
    fill_in "Parking area", with: @parking_usage_history.parking_area_id
    fill_in "Year", with: @parking_usage_history.year
    click_on "Update Parking usage history"

    assert_text "Parking usage history was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking usage history" do
    visit parking_usage_history_url(@parking_usage_history)
    click_on "Destroy this parking usage history", match: :first

    assert_text "Parking usage history was successfully destroyed"
  end
end
