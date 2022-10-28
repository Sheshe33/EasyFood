class OrdersItemsController < ApplicationController

  def index
    @orders_items = OrderItem.all
  end

  def create
    @order_item = OrderItem.new
    @order_item = OrderItem.find(params[:order_item_id])
    #@order = Order.find(params[:order_id])
    @order_item.order = @order
    @order_item.save
    raise
  end

  def destroy

  end
end
