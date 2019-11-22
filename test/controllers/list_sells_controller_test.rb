require 'test_helper'

class ListSellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_sell = list_sells(:one)
  end

  test "should get index" do
    get list_sells_url
    assert_response :success
  end

  test "should get new" do
    get new_list_sell_url
    assert_response :success
  end

  test "should create list_sell" do
    assert_difference('ListSell.count') do
      post list_sells_url, params: { list_sell: { address: @list_sell.address, basement_size: @list_sell.basement_size, contact_no: @list_sell.contact_no, description: @list_sell.description, email: @list_sell.email, finished_suqare_area: @list_sell.finished_suqare_area, garage_size: @list_sell.garage_size, hoa_dues: @list_sell.hoa_dues, home_type: @list_sell.home_type, lot_size: @list_sell.lot_size, my_views: @list_sell.my_views, postal_code: @list_sell.postal_code, price: @list_sell.price, st_model_year: @list_sell.st_model_year, state: @list_sell.state, title: @list_sell.title, unit_no: @list_sell.unit_no, virtual_tour_url: @list_sell.virtual_tour_url, website: @list_sell.website, year_built: @list_sell.year_built } }
    end

    assert_redirected_to list_sell_url(ListSell.last)
  end

  test "should show list_sell" do
    get list_sell_url(@list_sell)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_sell_url(@list_sell)
    assert_response :success
  end

  test "should update list_sell" do
    patch list_sell_url(@list_sell), params: { list_sell: { address: @list_sell.address, basement_size: @list_sell.basement_size, contact_no: @list_sell.contact_no, description: @list_sell.description, email: @list_sell.email, finished_suqare_area: @list_sell.finished_suqare_area, garage_size: @list_sell.garage_size, hoa_dues: @list_sell.hoa_dues, home_type: @list_sell.home_type, lot_size: @list_sell.lot_size, my_views: @list_sell.my_views, postal_code: @list_sell.postal_code, price: @list_sell.price, st_model_year: @list_sell.st_model_year, state: @list_sell.state, title: @list_sell.title, unit_no: @list_sell.unit_no, virtual_tour_url: @list_sell.virtual_tour_url, website: @list_sell.website, year_built: @list_sell.year_built } }
    assert_redirected_to list_sell_url(@list_sell)
  end

  test "should destroy list_sell" do
    assert_difference('ListSell.count', -1) do
      delete list_sell_url(@list_sell)
    end

    assert_redirected_to list_sells_url
  end
end
