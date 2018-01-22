require 'test_helper'

class BoilsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get boils_show_url
    assert_response :success
  end

  test "should get new" do
    get boils_new_url
    assert_response :success
  end

  test "should get create" do
    get boils_create_url
    assert_response :success
  end

  test "should get index" do
    get boils_index_url
    assert_response :success
  end

  test "should get destroy" do
    get boils_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get boils_edit_url
    assert_response :success
  end

  test "should get update" do
    get boils_update_url
    assert_response :success
  end

end
