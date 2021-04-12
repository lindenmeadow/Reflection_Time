require "application_system_test_case"

class ReflectionsTest < ApplicationSystemTestCase
  setup do
    @reflection = reflections(:one)
  end

  test "visiting the index" do
    visit reflections_url
    assert_selector "h1", text: "Reflections"
  end

  test "creating a Reflection" do
    visit reflections_url
    click_on "New Reflection"

    fill_in "Block", with: @reflection.block
    fill_in "Collaboration", with: @reflection.collaboration
    fill_in "Comments", with: @reflection.comments
    fill_in "Communication", with: @reflection.communication
    fill_in "Conduct", with: @reflection.conduct
    fill_in "Creativity", with: @reflection.creativity
    fill_in "Leadership", with: @reflection.leadership
    fill_in "Project name", with: @reflection.project_name
    fill_in "Project type", with: @reflection.project_type
    fill_in "Student name", with: @reflection.student_name
    fill_in "Teacher name", with: @reflection.teacher_name
    fill_in "Thinking", with: @reflection.thinking
    fill_in "User", with: @reflection.user_id
    fill_in "Work", with: @reflection.work
    click_on "Create Reflection"

    assert_text "Reflection was successfully created"
    click_on "Back"
  end

  test "updating a Reflection" do
    visit reflections_url
    click_on "Edit", match: :first

    fill_in "Block", with: @reflection.block
    fill_in "Collaboration", with: @reflection.collaboration
    fill_in "Comments", with: @reflection.comments
    fill_in "Communication", with: @reflection.communication
    fill_in "Conduct", with: @reflection.conduct
    fill_in "Creativity", with: @reflection.creativity
    fill_in "Leadership", with: @reflection.leadership
    fill_in "Project name", with: @reflection.project_name
    fill_in "Project type", with: @reflection.project_type
    fill_in "Student name", with: @reflection.student_name
    fill_in "Teacher name", with: @reflection.teacher_name
    fill_in "Thinking", with: @reflection.thinking
    fill_in "User", with: @reflection.user_id
    fill_in "Work", with: @reflection.work
    click_on "Update Reflection"

    assert_text "Reflection was successfully updated"
    click_on "Back"
  end

  test "destroying a Reflection" do
    visit reflections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reflection was successfully destroyed"
  end
end
