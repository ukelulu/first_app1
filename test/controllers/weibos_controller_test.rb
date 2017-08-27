require 'test_helper'

class WeibosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weibo = weibos(:one)
  end

  test "should get index" do
    get weibos_url
    assert_response :success
  end

  test "should get new" do
    get new_weibo_url
    assert_response :success
  end

  test "should create weibo" do
    assert_difference('Weibo.count') do
      post weibos_url, params: { weibo: { description: @weibo.description, title: @weibo.title } }
    end

    assert_redirected_to weibo_url(Weibo.last)
  end

  test "should show weibo" do
    get weibo_url(@weibo)
    assert_response :success
  end

  test "should get edit" do
    get edit_weibo_url(@weibo)
    assert_response :success
  end

  test "should update weibo" do
    patch weibo_url(@weibo), params: { weibo: { description: @weibo.description, title: @weibo.title } }
    assert_redirected_to weibo_url(@weibo)
  end

  test "should destroy weibo" do
    assert_difference('Weibo.count', -1) do
      delete weibo_url(@weibo)
    end

    assert_redirected_to weibos_url
  end
end
