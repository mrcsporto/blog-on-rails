class ApplicationController < ActionController::Base
  before_action :current_user_name

  def current_user_name
    if current_user.present?
      @current_user_name = current_user.email.to_s.split('@')[0]
    end
  end
end
