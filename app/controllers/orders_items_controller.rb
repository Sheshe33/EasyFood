class OrdersItemsController < ApplicationController

  def index
    @orders_items = OrderItem.all
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    @order = Order.find(params[:order_id])
    #@order_item = OrderItem.find(params[:order_item_id])
    @order_item.order = @order
    @order_item.save
    redirect_to orders_items_path
    raise
  end

  def destroy

  end

  def order_item_params
    params.require(:order_item).permit(:order_id, :meal_id, :menu_id, :table_number, :price, :nummber_customer)

  end
end
