require 'test_helper'

class MainPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_page_home_url
    assert_response :success
  end

  test "should get blog" do
    get main_page_blog_url
    assert_response :success
  end

  test "should get shop" do
    get main_page_shop_url
    assert_response :success
  end

  test "should get contacts" do
    get main_page_contacts_url
    assert_response :success
  end

end
