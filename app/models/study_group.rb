class StudyGroup < ApplicationRecord
  belongs_to :learning_resource
  has_many :study_group_attendances, dependent: :destroy
  
  has_many :study_group_events, dependent: :destroy
end
