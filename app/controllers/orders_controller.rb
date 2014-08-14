class OrdersController < ApplicationController
  before_action :setup

  def index

  end

  def show
    render "index"
  end

  def create

  end

  def update

  end

  private
  def setup
    @item ||= Item.new
    @order = session[:order_id] ? Order.find(session[:order_id]) : Order.new
    session[:order_id] =  @order.id if @order.save
  end
end
