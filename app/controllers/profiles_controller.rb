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

  def destroy_list
    @list = current_user.lists.find(params[:id])
    @list.destroy
    flash[:notice] = "List deleted successfully"
    redirect_to root_path
  end

end
