require 'test_helper'

class GiftLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gift_link = gift_links(:one)
  end

  test "should get index" do
    get gift_links_url, as: :json
    assert_response :success
  end

  test "should create gift_link" do
    assert_difference('GiftLink.count') do
      post gift_links_url, params: { gift_link: { text: @gift_link.text } }, as: :json
    end

    assert_response 201
  end

  test "should show gift_link" do
    get gift_link_url(@gift_link), as: :json
    assert_response :success
  end

  test "should update gift_link" do
    patch gift_link_url(@gift_link), params: { gift_link: { text: @gift_link.text } }, as: :json
    assert_response 200
  end

  test "should destroy gift_link" do
    assert_difference('GiftLink.count', -1) do
      delete gift_link_url(@gift_link), as: :json
    end

    assert_response 204
  end
end
