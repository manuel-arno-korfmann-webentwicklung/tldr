require "application_system_test_case"

class StudyGroupsTest < ApplicationSystemTestCase
  setup do
    @study_group = study_groups(:one)
  end

  test "visiting the index" do
    visit study_groups_url
    assert_selector "h1", text: "Study Groups"
  end

  test "creating a Study group" do
    visit study_groups_url
    click_on "New Study Group"

    click_on "Create Study group"

    assert_text "Study group was successfully created"
    click_on "Back"
  end

  test "updating a Study group" do
    visit study_groups_url
    click_on "Edit", match: :first

    click_on "Update Study group"

    assert_text "Study group was successfully updated"
    click_on "Back"
  end

  test "destroying a Study group" do
    visit study_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study group was successfully destroyed"
  end
end
