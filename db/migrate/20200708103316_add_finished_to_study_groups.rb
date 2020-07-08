class AddFinishedToStudyGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :study_groups, :finished, :boolean
  end
end
