require 'test_helper'

class RecipeFermentablesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recipe_fermentables_new_url
    assert_response :success
  end

  test "should get create" do
    get recipe_fermentables_create_url
    assert_response :success
  end

  test "should get show" do
    get recipe_fermentables_show_url
    assert_response :success
  end

  test "should get edit" do
    get recipe_fermentables_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get recipe_fermentables_destroy_url
    assert_response :success
  end

  test "should get update" do
    get recipe_fermentables_update_url
    assert_response :success
  end

end
