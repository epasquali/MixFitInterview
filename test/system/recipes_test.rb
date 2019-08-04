require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Activityiron", with: @recipe.ActivityIron
    fill_in "Activityvitc", with: @recipe.ActivityVitC
    fill_in "Activityvitd3", with: @recipe.ActivityVitD3
    fill_in "Intakeiron", with: @recipe.IntakeIron
    fill_in "Intakevitc", with: @recipe.IntakeVitC
    fill_in "Intakevitd3", with: @recipe.IntakeVitD3
    fill_in "Postmanuser", with: @recipe.PostmanUser_id
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Activityiron", with: @recipe.ActivityIron
    fill_in "Activityvitc", with: @recipe.ActivityVitC
    fill_in "Activityvitd3", with: @recipe.ActivityVitD3
    fill_in "Intakeiron", with: @recipe.IntakeIron
    fill_in "Intakevitc", with: @recipe.IntakeVitC
    fill_in "Intakevitd3", with: @recipe.IntakeVitD3
    fill_in "Postmanuser", with: @recipe.PostmanUser_id
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
