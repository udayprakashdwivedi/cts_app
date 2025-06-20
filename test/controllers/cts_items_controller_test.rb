require "test_helper"

class CtsItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cts_item = cts_items(:one)
  end

  test "should get index" do
    get cts_items_url
    assert_response :success
  end

  test "should get new" do
    get new_cts_item_url
    assert_response :success
  end

  test "should create cts_item" do
    assert_difference("CtsItem.count") do
      post cts_items_url, params: { cts_item: { connection_data: @cts_item.connection_data, dimensions: @cts_item.dimensions, ordering_information: @cts_item.ordering_information, technical_data: @cts_item.technical_data } }
    end

    assert_redirected_to cts_item_url(CtsItem.last)
  end

  test "should show cts_item" do
    get cts_item_url(@cts_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_cts_item_url(@cts_item)
    assert_response :success
  end

  test "should update cts_item" do
    patch cts_item_url(@cts_item), params: { cts_item: { connection_data: @cts_item.connection_data, dimensions: @cts_item.dimensions, ordering_information: @cts_item.ordering_information, technical_data: @cts_item.technical_data } }
    assert_redirected_to cts_item_url(@cts_item)
  end

  test "should destroy cts_item" do
    assert_difference("CtsItem.count", -1) do
      delete cts_item_url(@cts_item)
    end

    assert_redirected_to cts_items_url
  end
end
