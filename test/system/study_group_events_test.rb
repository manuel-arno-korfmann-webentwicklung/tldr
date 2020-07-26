require "application_system_test_case"

class StudyGroupEventsTest < ApplicationSystemTestCase
  setup do
    @study_group_event = study_group_events(:one)
  end

  test "visiting the index" do
    visit study_group_events_url
    assert_selector "h1", text: "Study Group Events"
  end

  test "creating a Study group event" do
    visit study_group_events_url
    click_on "New Study Group Event"

    fill_in "Date", with: @study_group_event.date
    click_on "Create Study group event"

    assert_text "Study group event was successfully created"
    click_on "Back"
  end

  test "updating a Study group event" do
    visit study_group_events_url
    click_on "Edit", match: :first

    fill_in "Date", with: @study_group_event.date
    click_on "Update Study group event"

    assert_text "Study group event was successfully updated"
    click_on "Back"
  end

  test "destroying a Study group event" do
    visit study_group_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study group event was successfully destroyed"
  end
end
