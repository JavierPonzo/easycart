class OrdersController < ApplicationController
  before_action :set_product, only: [:create, :new]

  def index
    @orders = current_user.orders
    #@product = @orders.product
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @order.user = current_user
    @order.product = @product
    if @order.save
      redirect_to confirm_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
