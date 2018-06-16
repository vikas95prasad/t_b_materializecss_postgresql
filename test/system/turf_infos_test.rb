require "application_system_test_case"

class TurfInfosTest < ApplicationSystemTestCase
  setup do
    @turf_info = turf_infos(:one)
  end

  test "visiting the index" do
    visit turf_infos_url
    assert_selector "h1", text: "Turf Infos"
  end

  test "creating a Turf info" do
    visit turf_infos_url
    click_on "New Turf Info"

    fill_in "Address", with: @turf_info.address
    fill_in "Available", with: @turf_info.available
    fill_in "Charges", with: @turf_info.charges
    fill_in "Email", with: @turf_info.email
    fill_in "Landmark", with: @turf_info.landmark
    fill_in "Name", with: @turf_info.name
    fill_in "Phone", with: @turf_info.phone
    click_on "Create Turf info"

    assert_text "Turf info was successfully created"
    click_on "Back"
  end

  test "updating a Turf info" do
    visit turf_infos_url
    click_on "Edit", match: :first

    fill_in "Address", with: @turf_info.address
    fill_in "Available", with: @turf_info.available
    fill_in "Charges", with: @turf_info.charges
    fill_in "Email", with: @turf_info.email
    fill_in "Landmark", with: @turf_info.landmark
    fill_in "Name", with: @turf_info.name
    fill_in "Phone", with: @turf_info.phone
    click_on "Update Turf info"

    assert_text "Turf info was successfully updated"
    click_on "Back"
  end

  test "destroying a Turf info" do
    visit turf_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turf info was successfully destroyed"
  end
end
