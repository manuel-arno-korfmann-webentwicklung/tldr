class CreateStudyGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :study_groups do |t|
      t.references :learning_resources, null: false, foreign_key: true

      t.timestamps
    end
  end
end
