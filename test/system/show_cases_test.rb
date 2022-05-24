require "application_system_test_case"

class ShowCasesTest < ApplicationSystemTestCase
  setup do
    @show_case = show_cases(:one)
  end

  test "visiting the index" do
    visit show_cases_url
    assert_selector "h1", text: "Show cases"
  end

  test "should create show case" do
    visit show_cases_url
    click_on "New show case"

    fill_in "Name", with: @show_case.name
    click_on "Create Show case"

    assert_text "Show case was successfully created"
    click_on "Back"
  end

  test "should update Show case" do
    visit show_case_url(@show_case)
    click_on "Edit this show case", match: :first

    fill_in "Name", with: @show_case.name
    click_on "Update Show case"

    assert_text "Show case was successfully updated"
    click_on "Back"
  end

  test "should destroy Show case" do
    visit show_case_url(@show_case)
    click_on "Destroy this show case", match: :first

    assert_text "Show case was successfully destroyed"
  end
end
