class ListsController < ApplicationController
  before_action :set_list, only: [ :show, :destroy, :update ]
  before_action :set_lists, only: [ :show ]

  def show; end

  def update
    if @list.update(list_params)
      redirect_to @list, notice: "List updated successfully"
    else
      render :edit
    end
  end

  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to @list, notice: "List created successfully"
    else
      render :index
    end
  end

  def destroy
    @list.destroy
    redirect_to root_path, notice: "List deleted successfully"
  end

  private

  def set_list
    @list = current_user.lists.find(params[:id])
  end

  def set_lists
    @lists = current_user.lists
  end

  def list_params
    params.require(:list).permit(:title)
  end
end
