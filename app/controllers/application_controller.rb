class ApplicationController < ActionController::Base
  protect_from_forgery

  # rescue_from Exception, with: :yikes

  def require_midterm_session
    if session[:exam_user_id].blank?
      redirect_to midterm_login_url
    end
    @user = ExamUser.find(session[:exam_user_id])
  end

  def yikes
    redirect_to root_url
  end
end
