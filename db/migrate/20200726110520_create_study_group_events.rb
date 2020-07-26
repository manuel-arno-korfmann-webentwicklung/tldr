class CreateStudyGroupEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :study_group_events do |t|
      t.datetime :date
      t.references :study_group
      t.timestamps
    end
  end
end
