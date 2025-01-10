class ProfilesController < ApplicationController
  before_action :set_list, only: [ :show_list, :destroy_list ]

  def profile
    @lists = current_user.lists
    @list = @lists.last
  end

  def show_list
    @lists = current_user.lists
    render :profile
  end

  def destroy_list
    @list.destroy
    flash[:notice] = "List deleted successfully"
    redirect_to root_path
  end

  private

  def set_list
    @list = current_user.lists.find(params[:id])
  end
end
