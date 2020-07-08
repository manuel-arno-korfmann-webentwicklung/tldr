class CreateStudyGroupAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :study_group_attendances do |t|
      t.references :study_group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
