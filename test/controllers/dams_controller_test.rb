require 'test_helper'

class DamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dams_index_url
    assert_response :success
  end

  test "should get show" do
    get dams_show_url
    assert_response :success
  end

  test "should get new" do
    get dams_new_url
    assert_response :success
  end

  test "should get edit" do
    get dams_edit_url
    assert_response :success
  end

end
