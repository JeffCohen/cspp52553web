class ExamUser < ActiveRecord::Base
  attr_accessible :identifier, :name, :in_session

  has_many :exam_answers, dependent: :destroy
  has_many :exam_options, through: :exam_answers
  has_many :exam_questions, through: :exam_options, uniq: true

  def self.answer_key
    find_by_identifier 'answerkey'
  end

  def score_for_question(question)
    question.score_for_user(self)
  end

  def score
    score = 0
    ExamQuestion.order('position asc').each do |q|
      score += score_for_question(q) unless q.position == 32 || q.position == 36
    end
    return score
  end
end
