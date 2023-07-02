require "application_system_test_case"

class OrganizationDataTest < ApplicationSystemTestCase
  setup do
    @organization_datum = organization_data(:one)
  end

  test "visiting the index" do
    visit organization_data_url
    assert_selector "h1", text: "Organization Data"
  end

  test "creating a Organization datum" do
    visit organization_data_url
    click_on "New Organization Datum"

    click_on "Create Organization datum"

    assert_text "Organization datum was successfully created"
    click_on "Back"
  end

  test "updating a Organization datum" do
    visit organization_data_url
    click_on "Edit", match: :first

    click_on "Update Organization datum"

    assert_text "Organization datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization datum" do
    visit organization_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization datum was successfully destroyed"
  end
end
