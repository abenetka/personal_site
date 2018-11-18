require './test/test_helper/'

class ErrorPageTest < CapybaraTestCase
  def test_user_receives_error_for_page_that_does_not_exist
    visit '/does-not-exist'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
