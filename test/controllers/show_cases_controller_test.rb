require "test_helper"

class ShowCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @show_case = show_cases(:one)
  end

  test "should get index" do
    get show_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_show_case_url
    assert_response :success
  end

  test "should create show_case" do
    assert_difference("ShowCase.count") do
      post show_cases_url, params: { show_case: { name: @show_case.name } }
    end

    assert_redirected_to show_case_url(ShowCase.last)
  end

  test "should show show_case" do
    get show_case_url(@show_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_show_case_url(@show_case)
    assert_response :success
  end

  test "should update show_case" do
    patch show_case_url(@show_case), params: { show_case: { name: @show_case.name } }
    assert_redirected_to show_case_url(@show_case)
  end

  test "should destroy show_case" do
    assert_difference("ShowCase.count", -1) do
      delete show_case_url(@show_case)
    end

    assert_redirected_to show_cases_url
  end
end
