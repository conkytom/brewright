require 'test_helper'

class OthersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get others_show_url
    assert_response :success
  end

  test "should get new" do
    get others_new_url
    assert_response :success
  end

  test "should get create" do
    get others_create_url
    assert_response :success
  end

  test "should get index" do
    get others_index_url
    assert_response :success
  end

  test "should get destroy" do
    get others_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get others_edit_url
    assert_response :success
  end

  test "should get update" do
    get others_update_url
    assert_response :success
  end

end
