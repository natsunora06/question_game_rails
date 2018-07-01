require 'test_helper'

class AnswerHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_history = answer_histories(:one)
  end

  test "should get index" do
    get answer_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_answer_history_url
    assert_response :success
  end

  test "should create answer_history" do
    assert_difference('AnswerHistory.count') do
      post answer_histories_url, params: { answer_history: { answer_id: @answer_history.answer_id, question_id: @answer_history.question_id } }
    end

    assert_redirected_to answer_history_url(AnswerHistory.last)
  end

  test "should show answer_history" do
    get answer_history_url(@answer_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_answer_history_url(@answer_history)
    assert_response :success
  end

  test "should update answer_history" do
    patch answer_history_url(@answer_history), params: { answer_history: { answer_id: @answer_history.answer_id, question_id: @answer_history.question_id } }
    assert_redirected_to answer_history_url(@answer_history)
  end

  test "should destroy answer_history" do
    assert_difference('AnswerHistory.count', -1) do
      delete answer_history_url(@answer_history)
    end

    assert_redirected_to answer_histories_url
  end
end
