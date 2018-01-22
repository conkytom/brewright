require 'test_helper'

class MaltsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get malts_show_url
    assert_response :success
  end

  test "should get new" do
    get malts_new_url
    assert_response :success
  end

  test "should get create" do
    get malts_create_url
    assert_response :success
  end

  test "should get index" do
    get malts_index_url
    assert_response :success
  end

  test "should get destroy" do
    get malts_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get malts_edit_url
    assert_response :success
  end

  test "should get update" do
    get malts_update_url
    assert_response :success
  end

end
