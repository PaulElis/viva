class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      redirect_to @user
    else
      render @user
    end
  end

  def destroy
    @user = User.find(params[:id])

  end

private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
