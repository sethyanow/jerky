class OrdersController < ApplicationController
  before_action :setup #, except: :index

  def index
    @order ||= Order.new
    session[:order_id] = @order.id if @order.save
  end

  def show
    render "index"
  end

  def create
    item = Item.create(order_params) if @order.save
    item.order_id = params[:id]
    if item.save then
      render "index"
    else
      #handle the error?
      render "index"
    end
  end

  def update
   item = Item.create(order_params) if @order.save
    item.order_id = params[:id]
    if item.save then
      render "index"
    else
      #handle the error?
      render "index"
    end
  end

  private
  def setup
    @item ||= Item.new
    @user ||= User.new
    @flavors ||= Flavor.all
    @sizes ||= Size.all
    @types ||= Type.all
    @order = Order.find(params[:id]) if params[:id]
   # @order = Order.find(params[:order_id])
  end

  def order_params
    params.require(:item).permit(:flavor_id, :type_id, :quantity)
  end
end
