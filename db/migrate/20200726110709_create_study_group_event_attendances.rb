class CreateStudyGroupEventAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :study_group_event_attendances do |t|
      t.references :study_group_attendance, null: false, foreign_key: true, index: { name: :index_sg_event_attendances_on_sg_attendance_id }
      t.references :study_group_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
