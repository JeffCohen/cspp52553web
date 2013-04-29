class ExamQuestion < ActiveRecord::Base
  attr_accessible :kind, :question

  has_many :exam_options

  before_save :assign_position

  def assign_position
    self.position ||= (ExamQuestion.maximum(:position) || 0) + 1
  end
end
