class ItemsController < ApplicationController
  def create
    item = Item.create(order_params)
    item.order_id = session[:order_id]
    if item.save then
      flash[:notice] = "Item Saved"
      redirect_to order_path(item.order_id)
    else
      #handle the error?
      flash[:error] = "Error"
      redirect_to "/"
    end

  end

  private
  def order_params
    params.require(:item).permit(:flavor_id, :type_id, :order_id, :quantity)
  end
end
