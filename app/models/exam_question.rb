class ExamQuestion < ActiveRecord::Base
  attr_accessible :kind, :question, :code

  has_many :exam_options, dependent: :destroy

  before_save :assign_position

  def assign_position
    self.position ||= (ExamQuestion.maximum(:position) || 0) + 1
  end

  def score_for_user(exam_user)
    all_correct_answers = ExamUser.answer_key.exam_answers.pluck(:exam_option_id)
    correct_answers_for_this_question = all_correct_answers & self.exam_options.pluck(:id)
    user_answers_for_this_question = exam_user.exam_answers.pluck(:exam_option_id) & self.exam_options.pluck(:id)

    user_correct_answers = user_answers_for_this_question & correct_answers_for_this_question
    user_wrong_answers = user_answers_for_this_question - correct_answers_for_this_question

    return [user_correct_answers.count - user_wrong_answers.count, 0].max
  end
end
