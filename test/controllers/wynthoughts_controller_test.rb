require 'test_helper'

class WynthoughtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wynthought = wynthoughts(:one)
  end

  test "should get index" do
    get wynthoughts_url
    assert_response :success
  end

  test "should get new" do
    get new_wynthought_url
    assert_response :success
  end

  test "should create wynthought" do
    assert_difference('Wynthought.count') do
      post wynthoughts_url, params: { wynthought: { body: @wynthought.body, suggestion_id: @wynthought.suggestion_id, title: @wynthought.title } }
    end

    assert_redirected_to wynthought_url(Wynthought.last)
  end

  test "should show wynthought" do
    get wynthought_url(@wynthought)
    assert_response :success
  end

  test "should get edit" do
    get edit_wynthought_url(@wynthought)
    assert_response :success
  end

  test "should update wynthought" do
    patch wynthought_url(@wynthought), params: { wynthought: { body: @wynthought.body, suggestion_id: @wynthought.suggestion_id, title: @wynthought.title } }
    assert_redirected_to wynthought_url(@wynthought)
  end

  test "should destroy wynthought" do
    assert_difference('Wynthought.count', -1) do
      delete wynthought_url(@wynthought)
    end

    assert_redirected_to wynthoughts_url
  end
end
