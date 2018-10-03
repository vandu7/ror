require 'test_helper'

class Interpage2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interpage2 = interpage2s(:one)
  end

  test "should get index" do
    get interpage2s_url
    assert_response :success
  end

  test "should get new" do
    get new_interpage2_url
    assert_response :success
  end

  test "should create interpage2" do
    assert_difference('Interpage2.count') do
      post interpage2s_url, params: { interpage2: {  } }
    end

    assert_redirected_to interpage2_url(Interpage2.last)
  end

  test "should show interpage2" do
    get interpage2_url(@interpage2)
    assert_response :success
  end

  test "should get edit" do
    get edit_interpage2_url(@interpage2)
    assert_response :success
  end

  test "should update interpage2" do
    patch interpage2_url(@interpage2), params: { interpage2: {  } }
    assert_redirected_to interpage2_url(@interpage2)
  end

  test "should destroy interpage2" do
    assert_difference('Interpage2.count', -1) do
      delete interpage2_url(@interpage2)
    end

    assert_redirected_to interpage2s_url
  end
end
