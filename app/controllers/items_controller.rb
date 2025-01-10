class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @list, notice: 'Item was successfully created.' }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("new_item_form", partial: "items/form", locals: { list: @list, item: @item }) }
        format.html {  redirect_to @list }
      end
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :description)
  end
end
