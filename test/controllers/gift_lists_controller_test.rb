require 'test_helper'

class GiftListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gift_list = gift_lists(:one)
  end

  test "should get index" do
    get gift_lists_url, as: :json
    assert_response :success
  end

  test "should create gift_list" do
    assert_difference('GiftList.count') do
      post gift_lists_url, params: { gift_list: { gift_id: @gift_list.gift_id, title: @gift_list.title, user_id: @gift_list.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show gift_list" do
    get gift_list_url(@gift_list), as: :json
    assert_response :success
  end

  test "should update gift_list" do
    patch gift_list_url(@gift_list), params: { gift_list: { gift_id: @gift_list.gift_id, title: @gift_list.title, user_id: @gift_list.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy gift_list" do
    assert_difference('GiftList.count', -1) do
      delete gift_list_url(@gift_list), as: :json
    end

    assert_response 204
  end
end
