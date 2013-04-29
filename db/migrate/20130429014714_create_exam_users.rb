class CreateExamUsers < ActiveRecord::Migration
  def change
    create_table :exam_users do |t|
      t.string :name
      t.string :identifier

      t.timestamps
    end
  end
end
