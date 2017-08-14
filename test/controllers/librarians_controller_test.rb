require 'test_helper'

class LibrariansControllerTest < ActionDispatch::IntegrationTest
  test "should get liberarian" do
    get librarians_liberarian_url
    assert_response :success
  end

end
