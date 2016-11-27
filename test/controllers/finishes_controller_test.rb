require 'test_helper'

class FinishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finish = finishes(:one)
  end

  test "should get index" do
    get finishes_url
    assert_response :success
  end

  test "should get new" do
    get new_finish_url
    assert_response :success
  end

  test "should create finish" do
    assert_difference('Finish.count') do
      post finishes_url, params: { finish: { description: @finish.description, price: @finish.price } }
    end

    assert_redirected_to finish_url(Finish.last)
  end

  test "should show finish" do
    get finish_url(@finish)
    assert_response :success
  end

  test "should get edit" do
    get edit_finish_url(@finish)
    assert_response :success
  end

  test "should update finish" do
    patch finish_url(@finish), params: { finish: { description: @finish.description, price: @finish.price } }
    assert_redirected_to finish_url(@finish)
  end

  test "should destroy finish" do
    assert_difference('Finish.count', -1) do
      delete finish_url(@finish)
    end

    assert_redirected_to finishes_url
  end
end
