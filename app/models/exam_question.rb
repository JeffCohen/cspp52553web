class ExamQuestion < ActiveRecord::Base
  attr_accessible :kind, :question, :code

  has_many :exam_options, dependent: :destroy

  before_save :assign_position

  def assign_position
    self.position ||= (ExamQuestion.maximum(:position) || 0) + 1
  end
end
