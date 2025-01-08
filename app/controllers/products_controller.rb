class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: %i[index show]


  def index
    @products = Product.where("stock > ?", 0)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save!
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.orders.any?
      flash[:alert] = "Este producto no puede eliminarse porque está asociado con un pedido."
      redirect_to my_products_path
    else
      @product.destroy
      flash[:notice] = "Producto eliminado correctamente."
      redirect_to my_products_path
    end
  end

  def my_products
      @products = current_user.products
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :price, :category, :stock, :description, :user_id, :quality_score, photos:[])
  end
end
