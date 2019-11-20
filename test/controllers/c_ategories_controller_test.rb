require 'test_helper'

class CAtegoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_ategory = c_ategories(:one)
  end

  test "should get index" do
    get c_ategories_url
    assert_response :success
  end

  test "should get index" do
    get new_c_ategory_url
    assert_response :success
  end

  test "should create c_ategory" do
    assert_difference('CAtegory.count') do
      post c_ategories_url, params: { c_ategory: { color: @c_ategory.color, title: @c_ategory.title } }
    end

    assert_redirected_to c_ategory_url(CAtegory.last)
  end

  test "should show c_ategory" do
    get c_ategory_url(@c_ategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_ategory_url(@c_ategory)
    assert_response :success
  end

  test "should update c_ategory" do
    patch c_ategory_url(@c_ategory), params: { c_ategory: { color: @c_ategory.color, title: @c_ategory.title } }
    assert_redirected_to c_ategory_url(@c_ategory)
  end

  test "should destroy c_ategory" do
    assert_difference('CAtegory.count', -1) do
      delete c_ategory_url(@c_ategory)
    end

    assert_redirected_to c_ategories_url
  end
end
