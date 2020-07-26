require 'test_helper'

class StudyGroupEventAttendancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_group_event_attendance = study_group_event_attendances(:one)
  end

  test "should get index" do
    get study_group_event_attendances_url
    assert_response :success
  end

  test "should get new" do
    get new_study_group_event_attendance_url
    assert_response :success
  end

  test "should create study_group_event_attendance" do
    assert_difference('StudyGroupEventAttendance.count') do
      post study_group_event_attendances_url, params: { study_group_event_attendance: { study_group_attendance_id: @study_group_event_attendance.study_group_attendance_id, study_group_event_id: @study_group_event_attendance.study_group_event_id } }
    end

    assert_redirected_to study_group_event_attendance_url(StudyGroupEventAttendance.last)
  end

  test "should show study_group_event_attendance" do
    get study_group_event_attendance_url(@study_group_event_attendance)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_group_event_attendance_url(@study_group_event_attendance)
    assert_response :success
  end

  test "should update study_group_event_attendance" do
    patch study_group_event_attendance_url(@study_group_event_attendance), params: { study_group_event_attendance: { study_group_attendance_id: @study_group_event_attendance.study_group_attendance_id, study_group_event_id: @study_group_event_attendance.study_group_event_id } }
    assert_redirected_to study_group_event_attendance_url(@study_group_event_attendance)
  end

  test "should destroy study_group_event_attendance" do
    assert_difference('StudyGroupEventAttendance.count', -1) do
      delete study_group_event_attendance_url(@study_group_event_attendance)
    end

    assert_redirected_to study_group_event_attendances_url
  end
end
