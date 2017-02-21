require 'test_helper'

class SliderItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get slider_items_new_url
    assert_response :success
  end

  test "should get edit" do
    get slider_items_edit_url
    assert_response :success
  end

  test "should get show" do
    get slider_items_show_url
    assert_response :success
  end

  test "should get index" do
    get slider_items_index_url
    assert_response :success
  end

  test "should get delete" do
    get slider_items_delete_url
    assert_response :success
  end

end
