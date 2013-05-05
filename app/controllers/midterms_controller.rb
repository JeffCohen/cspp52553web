class MidtermsController < ApplicationController

  before_filter :require_midterm_session, except: [:new, :create]

  def done
    logger.info "-" * 40
    logger.info "MIDTERM RECEIVED: #{@user.inspect}"
    logger.info params[:exam_option].inspect
    @user.toggle! :in_session
    reset_session
  end

  def new
  end

  def create
    exam_user = ExamUser.find_by_id(params[:id])
    if exam_user && !exam_user.in_session?
      exam_user.toggle! :in_session
      session[:exam_user_id] = exam_user.id
      redirect_to midterm_url, notice: 'You May Begin.'
    else
      logger.debug "User not found" if exam_user.blank?
      logger.debug "Session taken" if exam_user.present?
      redirect_to midterm_login_url, notice: 'Please Try Again.'
    end
  end

  def show
    @questions = ExamQuestion.order('position asc')
  end
end
