class StudyGroupAttendance < ApplicationRecord
  belongs_to :study_group
  belongs_to :user
end
