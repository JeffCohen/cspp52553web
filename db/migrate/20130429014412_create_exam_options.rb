class CreateExamOptions < ActiveRecord::Migration
  def change
    create_table :exam_options do |t|
      t.string :description
      t.integer :exam_question_id

      t.timestamps
    end
  end
end
