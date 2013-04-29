class CreateExamSessions < ActiveRecord::Migration
  def change
    create_table :exam_sessions do |t|
      t.integer :exam_user_id

      t.timestamps
    end
  end
end
