require "test_helper"

class CatergoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catergory = catergories(:one)
  end

  test "should get index" do
    get catergories_url
    assert_response :success
  end

  test "should get new" do
    get new_catergory_url
    assert_response :success
  end

  test "should create catergory" do
    assert_difference('Catergory.count') do
      post catergories_url, params: { catergory: { name: @catergory.name } }
    end

    assert_redirected_to catergory_url(Catergory.last)
  end

  test "should show catergory" do
    get catergory_url(@catergory)
    assert_response :success
  end

  test "should get edit" do
    get edit_catergory_url(@catergory)
    assert_response :success
  end

  test "should update catergory" do
    patch catergory_url(@catergory), params: { catergory: { name: @catergory.name } }
    assert_redirected_to catergory_url(@catergory)
  end

  test "should destroy catergory" do
    assert_difference('Catergory.count', -1) do
      delete catergory_url(@catergory)
    end

    assert_redirected_to catergories_url
  end
end
