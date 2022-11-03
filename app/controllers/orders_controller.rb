class OrdersController < ApplicationController

  def index
    @orders = Order.all

  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to order_path(@order)
  end
end
