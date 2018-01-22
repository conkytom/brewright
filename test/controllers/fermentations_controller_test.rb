require 'test_helper'

class FermentationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get fermentations_show_url
    assert_response :success
  end

  test "should get new" do
    get fermentations_new_url
    assert_response :success
  end

  test "should get create" do
    get fermentations_create_url
    assert_response :success
  end

  test "should get index" do
    get fermentations_index_url
    assert_response :success
  end

  test "should get destroy" do
    get fermentations_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get fermentations_edit_url
    assert_response :success
  end

  test "should get update" do
    get fermentations_update_url
    assert_response :success
  end

end
