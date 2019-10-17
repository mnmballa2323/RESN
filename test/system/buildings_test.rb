require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "creating a Building" do
    visit buildings_url
    click_on "New Building"

    check "Hoa" if @building.HOA
    fill_in "Hoa dues", with: @building.HOA_dues
    fill_in "Address", with: @building.address
    fill_in "Building subtype", with: @building.building_subtype
    fill_in "Building type", with: @building.building_type
    fill_in "Built year", with: @building.built_year
    fill_in "Description", with: @building.description
    fill_in "Fee includes", with: @building.fee_includes
    fill_in "Name", with: @building.name
    fill_in "Square footage", with: @building.square_footage
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "updating a Building" do
    visit buildings_url
    click_on "Edit", match: :first

    check "Hoa" if @building.HOA
    fill_in "Hoa dues", with: @building.HOA_dues
    fill_in "Address", with: @building.address
    fill_in "Building subtype", with: @building.building_subtype
    fill_in "Building type", with: @building.building_type
    fill_in "Built year", with: @building.built_year
    fill_in "Description", with: @building.description
    fill_in "Fee includes", with: @building.fee_includes
    fill_in "Name", with: @building.name
    fill_in "Square footage", with: @building.square_footage
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "destroying a Building" do
    visit buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Building was successfully destroyed"
  end
end
