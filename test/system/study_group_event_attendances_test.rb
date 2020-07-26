require "application_system_test_case"

class StudyGroupEventAttendancesTest < ApplicationSystemTestCase
  setup do
    @study_group_event_attendance = study_group_event_attendances(:one)
  end

  test "visiting the index" do
    visit study_group_event_attendances_url
    assert_selector "h1", text: "Study Group Event Attendances"
  end

  test "creating a Study group event attendance" do
    visit study_group_event_attendances_url
    click_on "New Study Group Event Attendance"

    fill_in "Study group attendance", with: @study_group_event_attendance.study_group_attendance_id
    fill_in "Study group event", with: @study_group_event_attendance.study_group_event_id
    click_on "Create Study group event attendance"

    assert_text "Study group event attendance was successfully created"
    click_on "Back"
  end

  test "updating a Study group event attendance" do
    visit study_group_event_attendances_url
    click_on "Edit", match: :first

    fill_in "Study group attendance", with: @study_group_event_attendance.study_group_attendance_id
    fill_in "Study group event", with: @study_group_event_attendance.study_group_event_id
    click_on "Update Study group event attendance"

    assert_text "Study group event attendance was successfully updated"
    click_on "Back"
  end

  test "destroying a Study group event attendance" do
    visit study_group_event_attendances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study group event attendance was successfully destroyed"
  end
end
