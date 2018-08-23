require 'test_helper'

class EmailConfirmationsControllerTest < ActionDispatch::IntegrationTest
  test "should get opened" do
    get email_confirmations_opened_url
    assert_response :success
  end

end
