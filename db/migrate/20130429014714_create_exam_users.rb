class CreateExamUsers < ActiveRecord::Migration
  def change
    create_table :exam_users do |t|
      t.string :name
      t.string :identifier
      t.string :data_backup
      t.boolean :in_session, default: false

      t.timestamps
    end
  end
end
