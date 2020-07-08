class AddZoomMeetingJoinUrlToStudyGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :study_groups, :zoom_meeting_join_url, :text
  end
end
