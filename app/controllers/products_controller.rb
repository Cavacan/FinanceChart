class ProductsController < ApplicationController
  def index
    @products = Product.all
    @dd = {"hoge": 50, "fuga": 30, "foo": 70, "bar": 10}
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(%i[amount price])
  end
end
