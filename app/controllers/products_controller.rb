class ProductsController < ApplicationController

  before_action :set_product, only: [:create, :show, :edit, :update]

  def index
    @products = Product.where(active: true).order("id DESC")
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end


  private
  def set_product
    @product = Product.find(params[:id])
  end

end
