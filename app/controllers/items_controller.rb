class ItemsController < ApplicationController
  before_action :set_list, only: %i[create edit update destroy]
  before_action :set_item, only: %i[edit update destroy]

  def create
    @item = @list.items.build(item_params)
    @item.user = current_user

    if @item.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to show_list_path(@list), notice: "Item was successfully created." }
      end
    else
      redirect_to list_path(@list)
    end
  end

  def edit
    @lists = current_user.lists
  end

  def update
    if @item.update(item_params)
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to list_path(@list), notice: "Item was successfully updated." }
      end
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to list_path(@list), notice: "Item was successfully destroyed." }
    end
  end

  private

  def set_list
    @list = current_user.lists.find(params[:list_id])
  end

  def set_item
    @item = @list.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :priority, :date, :completed)
  end
end
