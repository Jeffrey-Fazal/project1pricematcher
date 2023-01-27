class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end
  
  def show
    @products = Product.find params[:id]
    @product_hash = Product.apisearch(@products.name , 'hash')
  end

  def search
    if params[:search].blank?
      else
      @parameter = params[:search]
      @searchedfor = params[:search]
      @results = Product.all.where("name LIKE :search", search: "%#{@parameter}%")
      end
    end
end