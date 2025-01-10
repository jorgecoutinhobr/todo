class ProfilesController < ApplicationController
  def profile
    @lists = current_user.lists
    @list = @lists.last
  end

  def show_list
    @lists = current_user.lists
    @list = current_user.lists.find(params[:id])
    render :profile
  end
end
