class StudyGroupAttendance < ApplicationRecord
  belongs_to :study_group
  belongs_to :user
  
  def description
    str = ""
    str += user.full_name
    
    if self.host?
      str += " (Host)"
    end
    
    return str
  end
end
