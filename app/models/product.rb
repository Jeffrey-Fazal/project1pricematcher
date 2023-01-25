class Product < ApplicationRecord
    belongs_to :category, :optional => true
    # API Access to rapid api search thingy
    def self.apisearch (searchterm)
        require 'uri'
        require 'net/http'
        require 'openssl'
        require 'json'
        puts "User is searching for: #{searchterm}"
        endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=#{searchterm}&country=au&language=en")
        puts "Generated URL is:  #{endpoint}"
        
        http = Net::HTTP.new(endpoint.host, endpoint.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        api_request = Net::HTTP::Get.new(endpoint)
        api_request["X-RapidAPI-Key"] = ENV['RAPID_API']
        api_request["X-RapidAPI-Host"] = 'real-time-product-search.p.rapidapi.com'
        
        api_response = http.request(api_request)
        puts api_response.read_body

        @readout = api_response.read_body
        hash_as_string = @readout
        @readout_hash = JSON.parse hash_as_string.gsub('=>', ':')

        if (@readout_hash["data"].any?)
            @product_description = @readout_hash["data"][0]["product_description"]
        end
        puts @readout_hash
        # puts @product_description

        #Error handling
        # find product id #@product_description = ["data"][0]["product_description"]
        #@product_description = ["data"][0]["product_description"]
        #@readout_hash["data"][0]["product_product_photos"] 
        #@readout_hash["data"][0]["offer"]["price"]
        #@readout_hash["data"][0].size
        end
        
end

#Product.apisearch('')
