require 'test_helper'

class BooksStabilityTest < ActionDispatch::IntegrationTest

  def setup
  	get root_path
  end

  test "successfully responds to requests" do
  	assert_response :success
  end

end
