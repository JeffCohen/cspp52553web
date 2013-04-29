class CreateExamAnswers < ActiveRecord::Migration
  def change
    create_table :exam_answers do |t|
      t.integer :exam_option_id
      t.integer :exam_user_id

      t.timestamps
    end
  end
end
