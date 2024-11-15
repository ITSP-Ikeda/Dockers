require "test_helper"

class PaymentDestinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_destination = payment_destinations(:one)
  end

  test "should get index" do
    get payment_destinations_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_destination_url
    assert_response :success
  end

  test "should create payment_destination" do
    assert_difference("PaymentDestination.count") do
      post payment_destinations_url, params: { payment_destination: { account_number: @payment_destination.account_number, institution: @payment_destination.institution, payment_destination_name: @payment_destination.payment_destination_name } }
    end

    assert_redirected_to payment_destination_url(PaymentDestination.last)
  end

  test "should show payment_destination" do
    get payment_destination_url(@payment_destination)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_destination_url(@payment_destination)
    assert_response :success
  end

  test "should update payment_destination" do
    patch payment_destination_url(@payment_destination), params: { payment_destination: { account_number: @payment_destination.account_number, institution: @payment_destination.institution, payment_destination_name: @payment_destination.payment_destination_name } }
    assert_redirected_to payment_destination_url(@payment_destination)
  end

  test "should destroy payment_destination" do
    assert_difference("PaymentDestination.count", -1) do
      delete payment_destination_url(@payment_destination)
    end

    assert_redirected_to payment_destinations_url
  end
end
