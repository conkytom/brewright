require 'test_helper'

class MashsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mashs_show_url
    assert_response :success
  end

  test "should get new" do
    get mashs_new_url
    assert_response :success
  end

  test "should get create" do
    get mashs_create_url
    assert_response :success
  end

  test "should get index" do
    get mashs_index_url
    assert_response :success
  end

  test "should get destroy" do
    get mashs_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get mashs_edit_url
    assert_response :success
  end

  test "should get update" do
    get mashs_update_url
    assert_response :success
  end

end
