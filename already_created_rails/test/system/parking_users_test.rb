require "application_system_test_case"

class ParkingUsersTest < ApplicationSystemTestCase
  setup do
    @parking_user = parking_users(:one)
  end

  test "visiting the index" do
    visit parking_users_url
    assert_selector "h1", text: "Parking users"
  end

  test "should create parking user" do
    visit parking_users_url
    click_on "New parking user"

    fill_in "Parking user name", with: @parking_user.parking_user_name
    fill_in "Remark", with: @parking_user.remark
    click_on "Create Parking user"

    assert_text "Parking user was successfully created"
    click_on "Back"
  end

  test "should update Parking user" do
    visit parking_user_url(@parking_user)
    click_on "Edit this parking user", match: :first

    fill_in "Parking user name", with: @parking_user.parking_user_name
    fill_in "Remark", with: @parking_user.remark
    click_on "Update Parking user"

    assert_text "Parking user was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking user" do
    visit parking_user_url(@parking_user)
    click_on "Destroy this parking user", match: :first

    assert_text "Parking user was successfully destroyed"
  end
end
