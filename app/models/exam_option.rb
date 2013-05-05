class ExamOption < ActiveRecord::Base
  attr_accessible :description, :exam_question_id

  belongs_to :exam_question
end
