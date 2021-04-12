require "test_helper"

class ReflectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reflection = reflections(:one)
  end

  test "should get index" do
    get reflections_url
    assert_response :success
  end

  test "should get new" do
    get new_reflection_url
    assert_response :success
  end

  test "should create reflection" do
    assert_difference('Reflection.count') do
      post reflections_url, params: { reflection: { block: @reflection.block, collaboration: @reflection.collaboration, comments: @reflection.comments, communication: @reflection.communication, conduct: @reflection.conduct, creativity: @reflection.creativity, leadership: @reflection.leadership, project_name: @reflection.project_name, project_type: @reflection.project_type, student_name: @reflection.student_name, teacher_name: @reflection.teacher_name, thinking: @reflection.thinking, user_id: @reflection.user_id, work: @reflection.work } }
    end

    assert_redirected_to reflection_url(Reflection.last)
  end

  test "should show reflection" do
    get reflection_url(@reflection)
    assert_response :success
  end

  test "should get edit" do
    get edit_reflection_url(@reflection)
    assert_response :success
  end

  test "should update reflection" do
    patch reflection_url(@reflection), params: { reflection: { block: @reflection.block, collaboration: @reflection.collaboration, comments: @reflection.comments, communication: @reflection.communication, conduct: @reflection.conduct, creativity: @reflection.creativity, leadership: @reflection.leadership, project_name: @reflection.project_name, project_type: @reflection.project_type, student_name: @reflection.student_name, teacher_name: @reflection.teacher_name, thinking: @reflection.thinking, user_id: @reflection.user_id, work: @reflection.work } }
    assert_redirected_to reflection_url(@reflection)
  end

  test "should destroy reflection" do
    assert_difference('Reflection.count', -1) do
      delete reflection_url(@reflection)
    end

    assert_redirected_to reflections_url
  end
end
