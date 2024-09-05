require "application_system_test_case"

class FinancesTest < ApplicationSystemTestCase
  setup do
    @finance = finances(:one)
  end

  test "visiting the index" do
    visit finances_url
    assert_selector "h1", text: "Finances"
  end

  test "should create finance" do
    visit finances_url
    click_on "New finance"

    fill_in "Amount", with: @finance.amount
    fill_in "Date", with: @finance.date
    click_on "Create Finance"

    assert_text "Finance was successfully created"
    click_on "Back"
  end

  test "should update Finance" do
    visit finance_url(@finance)
    click_on "Edit this finance", match: :first

    fill_in "Amount", with: @finance.amount
    fill_in "Date", with: @finance.date
    click_on "Update Finance"

    assert_text "Finance was successfully updated"
    click_on "Back"
  end

  test "should destroy Finance" do
    visit finance_url(@finance)
    click_on "Destroy this finance", match: :first

    assert_text "Finance was successfully destroyed"
  end
end
