require "application_system_test_case"

class AnswerHistoriesTest < ApplicationSystemTestCase
  setup do
    @answer_history = answer_histories(:one)
  end

  test "visiting the index" do
    visit answer_histories_url
    assert_selector "h1", text: "Answer Histories"
  end

  test "creating a Answer history" do
    visit answer_histories_url
    click_on "New Answer History"

    fill_in "Answer", with: @answer_history.answer_id
    fill_in "Question", with: @answer_history.question_id
    click_on "Create Answer history"

    assert_text "Answer history was successfully created"
    click_on "Back"
  end

  test "updating a Answer history" do
    visit answer_histories_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @answer_history.answer_id
    fill_in "Question", with: @answer_history.question_id
    click_on "Update Answer history"

    assert_text "Answer history was successfully updated"
    click_on "Back"
  end

  test "destroying a Answer history" do
    visit answer_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answer history was successfully destroyed"
  end
end
