class WelcomesController < ApplicationController
  # before_action :require_logged_in
  def index
    render :layout => false
  end

end
