class MidtermsController < ApplicationController

  before_filter :require_midterm_session, except: [:new, :create]

  def done
    reset_session
  end

  def new
  end

  def create
    eu = ExamUser.find_by_id(params[:id])
    if eu && ExamSession.find_by_exam_user_id(eu.id).blank?
      session[:exam_user_id] = eu.id
      redirect_to midterm_url, notice: 'You May Begin.'
    else
      logger.debug "User not found" if eu.blank?
      logger.debug "Session taken" if eu.present?
      redirect_to midterm_login_url, notice: 'Please Try Again.'
    end
  end

  def show
    @questions = ExamQuestion.order('position asc')
  end
end
