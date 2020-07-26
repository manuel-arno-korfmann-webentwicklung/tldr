require 'test_helper'

class StudyGroupEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_group_event = study_group_events(:one)
  end

  test "should get index" do
    get study_group_events_url
    assert_response :success
  end

  test "should get new" do
    get new_study_group_event_url
    assert_response :success
  end

  test "should create study_group_event" do
    assert_difference('StudyGroupEvent.count') do
      post study_group_events_url, params: { study_group_event: { date: @study_group_event.date } }
    end

    assert_redirected_to study_group_event_url(StudyGroupEvent.last)
  end

  test "should show study_group_event" do
    get study_group_event_url(@study_group_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_group_event_url(@study_group_event)
    assert_response :success
  end

  test "should update study_group_event" do
    patch study_group_event_url(@study_group_event), params: { study_group_event: { date: @study_group_event.date } }
    assert_redirected_to study_group_event_url(@study_group_event)
  end

  test "should destroy study_group_event" do
    assert_difference('StudyGroupEvent.count', -1) do
      delete study_group_event_url(@study_group_event)
    end

    assert_redirected_to study_group_events_url
  end
end
