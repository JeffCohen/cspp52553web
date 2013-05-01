class ExamUser < ActiveRecord::Base
  attr_accessible :identifier, :name

  has_many :exam_answers
end
