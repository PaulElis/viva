class ListCommentsController < ApplicationController

  def show
    @list_comment = ListComment.find(params[:id])
  end

end
