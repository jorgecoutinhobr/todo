class ListsController < ApplicationController
  def create
    @list = List.new(list_params)
    @list.user = current_user

    if @list.save
      flash[:notice] = "List created successfully"
      redirect_to root_path
    else
      flash[:Alert] = "List could not be created"
      redirect_to root_path
    end
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end
end
