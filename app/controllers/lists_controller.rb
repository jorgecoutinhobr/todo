class ListsController < ApplicationController
  before_action :set_list, only: [ :show, :destroy ]

  def index
    @lists = current_user.lists
    @list = List.last
  end

  def show
    @lists = current_user.lists
  end

  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to lists_path, notice: "List created successfully"
    else
      render :index
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path, notice: "List deleted successfully"
  end

  private

  def set_list
    @list = current_user.lists.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title)
  end
end
