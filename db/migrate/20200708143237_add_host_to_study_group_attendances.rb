class AddHostToStudyGroupAttendances < ActiveRecord::Migration[6.0]
  def change
    add_column :study_group_attendances, :host, :boolean
  end
end
