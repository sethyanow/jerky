class ItemsController < ApplicationController

  def create
    item = Item.create(order_params)
    if item.save then
      flash[:notice] = "Item Saved"
      redirect_to '/'
    else
      #handle the error?
      flash[:error] = "Error"
      redirect_to "/"
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to '/'

  end

  private
  def order_params
    params.require(:item).permit(:flavor_id, :type_id, :cart_id, :size_id, :quantity)
  end
end
