require "application_system_test_case"

class CtsItemsTest < ApplicationSystemTestCase
  setup do
    @cts_item = cts_items(:one)
  end

  test "visiting the index" do
    visit cts_items_url
    assert_selector "h1", text: "Cts items"
  end

  test "should create cts item" do
    visit cts_items_url
    click_on "New cts item"

    fill_in "Connection data", with: @cts_item.connection_data
    fill_in "Dimensions", with: @cts_item.dimensions
    fill_in "Ordering information", with: @cts_item.ordering_information
    fill_in "Technical data", with: @cts_item.technical_data
    click_on "Create Cts item"

    assert_text "Cts item was successfully created"
    click_on "Back"
  end

  test "should update Cts item" do
    visit cts_item_url(@cts_item)
    click_on "Edit this cts item", match: :first

    fill_in "Connection data", with: @cts_item.connection_data
    fill_in "Dimensions", with: @cts_item.dimensions
    fill_in "Ordering information", with: @cts_item.ordering_information
    fill_in "Technical data", with: @cts_item.technical_data
    click_on "Update Cts item"

    assert_text "Cts item was successfully updated"
    click_on "Back"
  end

  test "should destroy Cts item" do
    visit cts_item_url(@cts_item)
    click_on "Destroy this cts item", match: :first

    assert_text "Cts item was successfully destroyed"
  end
end
