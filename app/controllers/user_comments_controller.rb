class UserCommentsController < ApplicationController

  def show
    @user_comment = UserComment.find(params[:id])
  end

end
