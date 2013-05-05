class ExamUser < ActiveRecord::Base
  attr_accessible :identifier, :name, :in_session

  has_many :exam_answers, dependent: :destroy
  has_many :exam_options, through: :exam_answers

end
