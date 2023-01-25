class Product < ApplicationRecord
    belongs_to :category, :optional => true
    # API Access to rapid api search thingy
    def self.apisearch (searchterm)
        require 'uri'
        require 'net/http'
        require 'openssl'
        require 'json'
        # puts "User is searching for: #{searchterm}"
        endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=#{searchterm}&country=au&language=en")
        # puts "Generated URL is:  #{endpoint}"
        
        http = Net::HTTP.new(endpoint.host, endpoint.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        api_request = Net::HTTP::Get.new(endpoint)
        api_request["X-RapidAPI-Key"] = ENV['RAPID_API']
        api_request["X-RapidAPI-Host"] = 'real-time-product-search.p.rapidapi.com'
        
        api_response = http.request(api_request)
        # puts api_response.read_body

        @readout = api_response.read_body
        hash_as_string = @readout
        @readout_hash = JSON.parse hash_as_string.gsub('=>', ':')
        # puts @readout_hash

        if (@readout_hash["data"].any?)
            @description_api = @readout_hash["data"][0]["product_description"]
        end
        # puts @product_description

        #Error handling
        #@product_description = @readout_hash["data"][0]["product_description"]
        # find product id #@product_description = ["data"][0]["product_description"]
        #@product_description = ["data"][0]["product_description"]
        #@readout_hash["data"][0]["product_product_photos"] 
        #@readout_hash["data"][0]["offer"]["price"]
        #@readout_hash["data"][0].size
        return @description_api
    end

    def self.apiimage (searchterm)
        require 'uri'
        require 'net/http'
        require 'openssl'
        require 'json'
        # puts "User is searching for: #{searchterm}"
        endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=#{searchterm}&country=au&language=en")
        # puts "Generated URL is:  #{endpoint}"
        
        http = Net::HTTP.new(endpoint.host, endpoint.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        api_request = Net::HTTP::Get.new(endpoint)
        api_request["X-RapidAPI-Key"] = ENV['RAPID_API']
        api_request["X-RapidAPI-Host"] = 'real-time-product-search.p.rapidapi.com'
        
        api_response = http.request(api_request)
        # puts api_response.read_body

        @readout = api_response.read_body
        hash_as_string = @readout
        @readout_hash = JSON.parse hash_as_string.gsub('=>', ':')
        # puts @readout_hash

        if (@readout_hash["data"].any?)
            @api_image = @readout_hash["data"][0]["product_photos"][0]
        end
        # puts @product_description

        #Error handling
        #@product_description = @readout_hash["data"][0]["product_description"]
        # find product id #@product_description = ["data"][0]["product_description"]
        #@product_description = ["data"][0]["product_description"]
        #@readout_hash["data"][0]["product_product_photos"] 
        #@readout_hash["data"][0]["offer"]["price"]
        #@readout_hash["data"][0].size
        return @api_image
    end

    def self.apiprice (searchterm)
        require 'uri'
        require 'net/http'
        require 'openssl'
        require 'json'
        # puts "User is searching for: #{searchterm}"
        endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=#{searchterm}&country=au&language=en")
        # puts "Generated URL is:  #{endpoint}"
        
        http = Net::HTTP.new(endpoint.host, endpoint.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        api_request = Net::HTTP::Get.new(endpoint)
        api_request["X-RapidAPI-Key"] = ENV['RAPID_API']
        api_request["X-RapidAPI-Host"] = 'real-time-product-search.p.rapidapi.com'
        
        api_response = http.request(api_request)
        # puts api_response.read_body

        @readout = api_response.read_body
        hash_as_string = @readout
        @readout_hash = JSON.parse hash_as_string.gsub('=>', ':')
        # puts @readout_hash

        if (@readout_hash["data"].any?)
            #@api_price = @readout_hash["data"][0]["product_photos"]["offer"]["price"].to_i
        end
        # puts @product_description

        #Error handling
        #@product_description = @readout_hash["data"][0]["product_description"]
        # find product id #@product_description = ["data"][0]["product_description"]
        #@product_description = ["data"][0]["product_description"]
        #@readout_hash["data"][0]["product_product_photos"] 
        #@readout_hash["data"][0]["offer"]["price"]
        #@readout_hash["data"][0].size
        return @api_price
    end
        
end

#Product.apisearch('')
