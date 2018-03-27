class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery with: :exception
  helpers do

    def current_user
      @current_user = (User.find_by(id: session[:user_id]))
    end

    def logged_in?
      current_user.id != nil
    end

    def require_logged_in
      return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end



  end



end
