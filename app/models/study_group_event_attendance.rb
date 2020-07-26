class StudyGroupEventAttendance < ApplicationRecord
  belongs_to :study_group_attendance
  belongs_to :study_group_event
end
