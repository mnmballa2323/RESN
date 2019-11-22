require "application_system_test_case"

class ListSellsTest < ApplicationSystemTestCase
  setup do
    @list_sell = list_sells(:one)
  end

  test "visiting the index" do
    visit list_sells_url
    assert_selector "h1", text: "List Sells"
  end

  test "creating a List sell" do
    visit list_sells_url
    click_on "New List Sell"

    fill_in "Address", with: @list_sell.address
    fill_in "Basement size", with: @list_sell.basement_size
    fill_in "Contact no", with: @list_sell.contact_no
    fill_in "Description", with: @list_sell.description
    fill_in "Email", with: @list_sell.email
    fill_in "Finished suqare area", with: @list_sell.finished_suqare_area
    fill_in "Garage size", with: @list_sell.garage_size
    fill_in "Hoa dues", with: @list_sell.hoa_dues
    fill_in "Home type", with: @list_sell.home_type
    fill_in "Lot size", with: @list_sell.lot_size
    fill_in "My views", with: @list_sell.my_views
    fill_in "Postal code", with: @list_sell.postal_code
    fill_in "Price", with: @list_sell.price
    fill_in "St model year", with: @list_sell.st_model_year
    fill_in "State", with: @list_sell.state
    fill_in "Title", with: @list_sell.title
    fill_in "Unit no", with: @list_sell.unit_no
    fill_in "Virtual tour url", with: @list_sell.virtual_tour_url
    fill_in "Website", with: @list_sell.website
    fill_in "Year built", with: @list_sell.year_built
    click_on "Create List sell"

    assert_text "List sell was successfully created"
    click_on "Back"
  end

  test "updating a List sell" do
    visit list_sells_url
    click_on "Edit", match: :first

    fill_in "Address", with: @list_sell.address
    fill_in "Basement size", with: @list_sell.basement_size
    fill_in "Contact no", with: @list_sell.contact_no
    fill_in "Description", with: @list_sell.description
    fill_in "Email", with: @list_sell.email
    fill_in "Finished suqare area", with: @list_sell.finished_suqare_area
    fill_in "Garage size", with: @list_sell.garage_size
    fill_in "Hoa dues", with: @list_sell.hoa_dues
    fill_in "Home type", with: @list_sell.home_type
    fill_in "Lot size", with: @list_sell.lot_size
    fill_in "My views", with: @list_sell.my_views
    fill_in "Postal code", with: @list_sell.postal_code
    fill_in "Price", with: @list_sell.price
    fill_in "St model year", with: @list_sell.st_model_year
    fill_in "State", with: @list_sell.state
    fill_in "Title", with: @list_sell.title
    fill_in "Unit no", with: @list_sell.unit_no
    fill_in "Virtual tour url", with: @list_sell.virtual_tour_url
    fill_in "Website", with: @list_sell.website
    fill_in "Year built", with: @list_sell.year_built
    click_on "Update List sell"

    assert_text "List sell was successfully updated"
    click_on "Back"
  end

  test "destroying a List sell" do
    visit list_sells_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List sell was successfully destroyed"
  end
end
