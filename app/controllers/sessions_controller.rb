class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:user][:username])
    user = user.try(:authenticate, params[:user][:password])
    # byebug
    return redirect_to(controller: 'sessions', action: 'new') unless user

    session[:user_id] = user.id
    @user = user
    redirect_to user_path(@user)
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
