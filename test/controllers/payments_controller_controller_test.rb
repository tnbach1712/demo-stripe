require 'test_helper'

class PaymentsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get payments_controller_index_url
    assert_response :success
  end

  test "should get payment" do
    get payments_controller_payment_url
    assert_response :success
  end

end
