require 'uri'
require 'net/http'
require 'openssl'

class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end
  
  def show
    @products = Product.find params[:id]
    query = @products.name  
    apisearch(query)
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

def apisearch (searchterm)
  puts "You are searching for #{searchterm}"
#endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=lenovo%20laptop&country=au&language=en")
endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=#{searchterm}&country=au&language=en")
  puts "The endpoint is #{endpoint}"

http = Net::HTTP.new(endpoint.host, endpoint.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

api_request = Net::HTTP::Get.new(endpoint)
api_request["X-RapidAPI-Key"] = ENV['RAPID_API']
api_request["X-RapidAPI-Host"] = 'real-time-product-search.p.rapidapi.com'

api_response = http.request(api_request)
puts api_response.read_body
@readout = api_response.read_body
end