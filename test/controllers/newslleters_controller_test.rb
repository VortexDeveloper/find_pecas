require 'test_helper'

class NewslletersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newslleter = newslleters(:one)
  end

  test "should get index" do
    get newslleters_url
    assert_response :success
  end

  test "should get new" do
    get new_newslleter_url
    assert_response :success
  end

  test "should create newslleter" do
    assert_difference('Newslleter.count') do
      post newslleters_url, params: { newslleter: {  } }
    end

    assert_redirected_to newslleter_url(Newslleter.last)
  end

  test "should show newslleter" do
    get newslleter_url(@newslleter)
    assert_response :success
  end

  test "should get edit" do
    get edit_newslleter_url(@newslleter)
    assert_response :success
  end

  test "should update newslleter" do
    patch newslleter_url(@newslleter), params: { newslleter: {  } }
    assert_redirected_to newslleter_url(@newslleter)
  end

  test "should destroy newslleter" do
    assert_difference('Newslleter.count', -1) do
      delete newslleter_url(@newslleter)
    end

    assert_redirected_to newslleters_url
  end
end
