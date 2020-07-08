class CreateLearningResources < ActiveRecord::Migration[6.0]
  def change
    create_table :learning_resources do |t|
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
