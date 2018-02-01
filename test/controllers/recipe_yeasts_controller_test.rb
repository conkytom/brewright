require 'test_helper'

class RecipeYeastsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recipe_yeasts_new_url
    assert_response :success
  end

  test "should get create" do
    get recipe_yeasts_create_url
    assert_response :success
  end

  test "should get show" do
    get recipe_yeasts_show_url
    assert_response :success
  end

  test "should get edit" do
    get recipe_yeasts_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get recipe_yeasts_destroy_url
    assert_response :success
  end

  test "should get update" do
    get recipe_yeasts_update_url
    assert_response :success
  end

end
