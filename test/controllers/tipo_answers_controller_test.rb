require 'test_helper'

class TipoAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_answer = tipo_answers(:one)
  end

  test "should get index" do
    get tipo_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_answer_url
    assert_response :success
  end

  test "should create tipo_answer" do
    assert_difference('TipoAnswer.count') do
      post tipo_answers_url, params: { tipo_answer: { topic: @tipo_answer.topic } }
    end

    assert_redirected_to tipo_answer_url(TipoAnswer.last)
  end

  test "should show tipo_answer" do
    get tipo_answer_url(@tipo_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_answer_url(@tipo_answer)
    assert_response :success
  end

  test "should update tipo_answer" do
    patch tipo_answer_url(@tipo_answer), params: { tipo_answer: { topic: @tipo_answer.topic } }
    assert_redirected_to tipo_answer_url(@tipo_answer)
  end

  test "should destroy tipo_answer" do
    assert_difference('TipoAnswer.count', -1) do
      delete tipo_answer_url(@tipo_answer)
    end

    assert_redirected_to tipo_answers_url
  end
end
