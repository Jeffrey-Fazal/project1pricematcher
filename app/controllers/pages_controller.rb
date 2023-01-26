class PagesController < ApplicationController
require 'uri'
require 'net/http'
require 'openssl'

  def home
    @products = Product.all
    @categories = Category.all
  end

  def about
  end

  def contact
  end

  def subscribe
  end

  def terms
  end
end
