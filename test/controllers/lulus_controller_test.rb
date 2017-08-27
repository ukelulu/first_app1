require 'test_helper'

class LulusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lulu = lulus(:one)
  end

  test "should get index" do
    get lulus_url
    assert_response :success
  end

  test "should get new" do
    get new_lulu_url
    assert_response :success
  end

  test "should create lulu" do
    assert_difference('Lulu.count') do
      post lulus_url, params: { lulu: { description: @lulu.description, title: @lulu.title } }
    end

    assert_redirected_to lulu_url(Lulu.last)
  end

  test "should show lulu" do
    get lulu_url(@lulu)
    assert_response :success
  end

  test "should get edit" do
    get edit_lulu_url(@lulu)
    assert_response :success
  end

  test "should update lulu" do
    patch lulu_url(@lulu), params: { lulu: { description: @lulu.description, title: @lulu.title } }
    assert_redirected_to lulu_url(@lulu)
  end

  test "should destroy lulu" do
    assert_difference('Lulu.count', -1) do
      delete lulu_url(@lulu)
    end

    assert_redirected_to lulus_url
  end
end
