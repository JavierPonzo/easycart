class OrdersController < ApplicationController
  before_action :set_product, only: [:new, :create]
  before_action :set_order, only: [:show, :create_checkout_session, :payment_success]

  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    if @product.stock.zero?
      flash[:alert] = 'We are sorry but the product is not available, try again later.'
      redirect_to products_path and return
    end

    @order = Order.new(user: current_user, product: @product)
    if @order.save
      redirect_to create_checkout_session_order_path(@order)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def create_checkout_session
    product = @order.product

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          currency: 'usd',
          product_data: {
            name: product.title,
            description: product.description
          },
          unit_amount: (product.price * 100).to_i,
        },
        quantity: 1,
      }],
      mode: 'payment',
      success_url: payment_success_order_url(@order),
      cancel_url: payment_cancel_order_url(@order),
      metadata: { order_id: @order.id, user_id: current_user.id }
    )

    redirect_to session.url, allow_other_host: true
  end

  def payment_success
    product = @order.product
    if product.stock.positive?
      product.update(stock: product.stock - 1)
      @order.update(status: "completed")
      flash[:notice] = "Payment successful. Thank you."
    else
      flash[:alert] = "Payment unsuccessful, please try again."
    end
    redirect_to my_orders_path
  end

  def payment_cancel
    flash[:alert] = "The payment was canceled. Please try again."
    redirect_to products_path
  end

  def my_orders
    @orders = current_user.orders
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
