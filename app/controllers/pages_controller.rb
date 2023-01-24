class PagesController < ApplicationController
  def home
    @products = Product.all
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
