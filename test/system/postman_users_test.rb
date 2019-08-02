require "application_system_test_case"

class PostmanUsersTest < ApplicationSystemTestCase
  setup do
    @postman_user = postman_users(:one)
  end

  test "visiting the index" do
    visit postman_users_url
    assert_selector "h1", text: "Postman Users"
  end

  test "creating a Postman user" do
    visit postman_users_url
    click_on "New Postman User"

    fill_in "Email", with: @postman_user.email
    fill_in "Height", with: @postman_user.height
    fill_in "Name", with: @postman_user.name
    fill_in "Weight", with: @postman_user.weight
    click_on "Create Postman user"

    assert_text "Postman user was successfully created"
    click_on "Back"
  end

  test "updating a Postman user" do
    visit postman_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @postman_user.email
    fill_in "Height", with: @postman_user.height
    fill_in "Name", with: @postman_user.name
    fill_in "Weight", with: @postman_user.weight
    click_on "Update Postman user"

    assert_text "Postman user was successfully updated"
    click_on "Back"
  end

  test "destroying a Postman user" do
    visit postman_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postman user was successfully destroyed"
  end
end
