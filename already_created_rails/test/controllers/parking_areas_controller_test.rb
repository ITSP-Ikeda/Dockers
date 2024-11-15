require "test_helper"

class ParkingAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_area = parking_areas(:one)
  end

  test "should get index" do
    get parking_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_area_url
    assert_response :success
  end

  test "should create parking_area" do
    assert_difference("ParkingArea.count") do
      post parking_areas_url, params: { parking_area: { parking_area_name: @parking_area.parking_area_name, parking_id: @parking_area.parking_id } }
    end

    assert_redirected_to parking_area_url(ParkingArea.last)
  end

  test "should show parking_area" do
    get parking_area_url(@parking_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_area_url(@parking_area)
    assert_response :success
  end

  test "should update parking_area" do
    patch parking_area_url(@parking_area), params: { parking_area: { parking_area_name: @parking_area.parking_area_name, parking_id: @parking_area.parking_id } }
    assert_redirected_to parking_area_url(@parking_area)
  end

  test "should destroy parking_area" do
    assert_difference("ParkingArea.count", -1) do
      delete parking_area_url(@parking_area)
    end

    assert_redirected_to parking_areas_url
  end
end
