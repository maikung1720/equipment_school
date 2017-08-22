require 'test_helper'

class LabwaresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
