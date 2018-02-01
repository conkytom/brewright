require 'test_helper'

class FermentablesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get fermentables_show_url
    assert_response :success
  end

  test "should get new" do
    get fermentables_new_url
    assert_response :success
  end

  test "should get create" do
    get fermentables_create_url
    assert_response :success
  end

  test "should get index" do
    get fermentables_index_url
    assert_response :success
  end

  test "should get destroy" do
    get fermentables_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get fermentables_edit_url
    assert_response :success
  end

  test "should get update" do
    get fermentables_update_url
    assert_response :success
  end

end
