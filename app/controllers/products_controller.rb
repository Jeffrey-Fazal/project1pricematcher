class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end
  
  def show
    @products = Product.find params[:id]
    @cdec = Product.apisearch(@products.name)
    @cpic = Product.apiimage(@products.name)
    @cprice = Product.apiprice(@products.name)
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