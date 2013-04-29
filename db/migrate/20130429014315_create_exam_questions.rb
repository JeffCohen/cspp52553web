class CreateExamQuestions < ActiveRecord::Migration
  def change
    create_table :exam_questions do |t|
      t.string  :question
      t.integer :kind, default: 0
      t.text    :code
      t.integer :position
      t.timestamps
    end
  end
end
