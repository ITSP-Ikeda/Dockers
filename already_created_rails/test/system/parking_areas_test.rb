require "application_system_test_case"

class ParkingAreasTest < ApplicationSystemTestCase
  setup do
    @parking_area = parking_areas(:one)
  end

  test "visiting the index" do
    visit parking_areas_url
    assert_selector "h1", text: "Parking areas"
  end

  test "should create parking area" do
    visit parking_areas_url
    click_on "New parking area"

    fill_in "Parking area name", with: @parking_area.parking_area_name
    fill_in "Parking", with: @parking_area.parking_id
    click_on "Create Parking area"

    assert_text "Parking area was successfully created"
    click_on "Back"
  end

  test "should update Parking area" do
    visit parking_area_url(@parking_area)
    click_on "Edit this parking area", match: :first

    fill_in "Parking area name", with: @parking_area.parking_area_name
    fill_in "Parking", with: @parking_area.parking_id
    click_on "Update Parking area"

    assert_text "Parking area was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking area" do
    visit parking_area_url(@parking_area)
    click_on "Destroy this parking area", match: :first

    assert_text "Parking area was successfully destroyed"
  end
end
