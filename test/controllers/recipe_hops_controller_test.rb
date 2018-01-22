require 'test_helper'

class RecipeHopsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recipe_hops_new_url
    assert_response :success
  end

  test "should get create" do
    get recipe_hops_create_url
    assert_response :success
  end

  test "should get show" do
    get recipe_hops_show_url
    assert_response :success
  end

  test "should get edit" do
    get recipe_hops_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get recipe_hops_destroy_url
    assert_response :success
  end

  test "should get update" do
    get recipe_hops_update_url
    assert_response :success
  end

end
