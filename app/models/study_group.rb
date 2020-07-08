class StudyGroup < ApplicationRecord
  belongs_to :learning_resource
  has_many :study_group_attendances
end
