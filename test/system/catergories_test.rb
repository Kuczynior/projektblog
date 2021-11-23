require "application_system_test_case"

class CatergoriesTest < ApplicationSystemTestCase
  setup do
    @catergory = catergories(:one)
  end

  test "visiting the index" do
    visit catergories_url
    assert_selector "h1", text: "Catergories"
  end

  test "creating a Catergory" do
    visit catergories_url
    click_on "New Catergory"

    fill_in "Name", with: @catergory.name
    click_on "Create Catergory"

    assert_text "Catergory was successfully created"
    click_on "Back"
  end

  test "updating a Catergory" do
    visit catergories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @catergory.name
    click_on "Update Catergory"

    assert_text "Catergory was successfully updated"
    click_on "Back"
  end

  test "destroying a Catergory" do
    visit catergories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catergory was successfully destroyed"
  end
end
