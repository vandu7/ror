require 'test_helper'

class Interpage1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interpage1 = interpage1s(:one)
  end

  test "should get index" do
    get interpage1s_url
    assert_response :success
  end

  test "should get new" do
    get new_interpage1_url
    assert_response :success
  end

  test "should create interpage1" do
    assert_difference('Interpage1.count') do
      post interpage1s_url, params: { interpage1: {  } }
    end

    assert_redirected_to interpage1_url(Interpage1.last)
  end

  test "should show interpage1" do
    get interpage1_url(@interpage1)
    assert_response :success
  end

  test "should get edit" do
    get edit_interpage1_url(@interpage1)
    assert_response :success
  end

  test "should update interpage1" do
    patch interpage1_url(@interpage1), params: { interpage1: {  } }
    assert_redirected_to interpage1_url(@interpage1)
  end

  test "should destroy interpage1" do
    assert_difference('Interpage1.count', -1) do
      delete interpage1_url(@interpage1)
    end

    assert_redirected_to interpage1s_url
  end
end
