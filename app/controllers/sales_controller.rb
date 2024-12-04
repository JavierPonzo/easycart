class SalesController < ApplicationController
  def index
    @sales = current_user.sales
  end

  def show
  end

  def new
  end

  def create
  end
end
