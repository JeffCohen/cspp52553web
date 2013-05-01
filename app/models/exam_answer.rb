class ExamAnswer < ActiveRecord::Base
  attr_accessible :exam_option_id, :exam_user_id

  belongs_to :exam_option
  belongs_to :exam_user
end
