require 'test_helper'

class ExamOptionsControllerTest < ActionController::TestCase
  setup do
    @exam_option = exam_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_option" do
    assert_difference('ExamOption.count') do
      post :create, exam_option: { description: @exam_option.description, exam_question_id: @exam_option.exam_question_id }
    end

    assert_redirected_to exam_option_path(assigns(:exam_option))
  end

  test "should show exam_option" do
    get :show, id: @exam_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_option
    assert_response :success
  end

  test "should update exam_option" do
    put :update, id: @exam_option, exam_option: { description: @exam_option.description, exam_question_id: @exam_option.exam_question_id }
    assert_redirected_to exam_option_path(assigns(:exam_option))
  end

  test "should destroy exam_option" do
    assert_difference('ExamOption.count', -1) do
      delete :destroy, id: @exam_option
    end

    assert_redirected_to exam_options_path
  end
end
