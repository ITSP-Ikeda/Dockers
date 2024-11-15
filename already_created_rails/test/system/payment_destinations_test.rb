require "application_system_test_case"

class PaymentDestinationsTest < ApplicationSystemTestCase
  setup do
    @payment_destination = payment_destinations(:one)
  end

  test "visiting the index" do
    visit payment_destinations_url
    assert_selector "h1", text: "Payment destinations"
  end

  test "should create payment destination" do
    visit payment_destinations_url
    click_on "New payment destination"

    fill_in "Account number", with: @payment_destination.account_number
    fill_in "Institution", with: @payment_destination.institution
    fill_in "Payment destination name", with: @payment_destination.payment_destination_name
    click_on "Create Payment destination"

    assert_text "Payment destination was successfully created"
    click_on "Back"
  end

  test "should update Payment destination" do
    visit payment_destination_url(@payment_destination)
    click_on "Edit this payment destination", match: :first

    fill_in "Account number", with: @payment_destination.account_number
    fill_in "Institution", with: @payment_destination.institution
    fill_in "Payment destination name", with: @payment_destination.payment_destination_name
    click_on "Update Payment destination"

    assert_text "Payment destination was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment destination" do
    visit payment_destination_url(@payment_destination)
    click_on "Destroy this payment destination", match: :first

    assert_text "Payment destination was successfully destroyed"
  end
end
