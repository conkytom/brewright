require 'test_helper'

class YeastsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get yeasts_show_url
    assert_response :success
  end

  test "should get new" do
    get yeasts_new_url
    assert_response :success
  end

  test "should get create" do
    get yeasts_create_url
    assert_response :success
  end

  test "should get index" do
    get yeasts_index_url
    assert_response :success
  end

  test "should get destroy" do
    get yeasts_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get yeasts_edit_url
    assert_response :success
  end

  test "should get update" do
    get yeasts_update_url
    assert_response :success
  end

end
