class Product < ApplicationRecord
    belongs_to :category, :optional => true
    # API Access to rapid api search thingy
    def self.apisearch (searchterm,type='description')
        require 'uri'
        require 'net/http'
        require 'openssl'
        require 'json'
    
        searchterm = URI.encode_www_form_component(searchterm)
        
        endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=#{searchterm}&country=au&language=en")
        # todo: logic for no search term
        #query_empty = query.empty?
        
        http = Net::HTTP.new(endpoint.host, endpoint.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        api_request = Net::HTTP::Get.new(endpoint)
        api_request["X-RapidAPI-Key"] = ENV['RAPID_API']
        api_request["X-RapidAPI-Host"] = 'real-time-product-search.p.rapidapi.com'
        
        api_response = http.request(api_request)
        
        response_raw = api_response.read_body
        response_hash = JSON.parse response_raw.gsub('=>', ':')
        
        if (response_hash["data"].present?)
            # num_results = response_hash["data"].size
            if (type ==='title')
                return @product_title = response_hash["data"][0]["product_title"] unless @product_title === !nil
            elsif (type === 'image')
                return @api_image = response_hash["data"][0]["product_photos"][0] unless @api_image === !nil
            elsif (type === 'description')
                return @api_description = response_hash["data"][0]["product_description"] unless @api_description === !nil
            elsif (type === 'price')
                return @api_price = response_hash["data"][0]["offer"]["price"] unless @api_price === !nil
            elsif (type ==='hash')
                return @hash = response_hash["data"]
            else 
                puts "invalid argument"
            end 
        else
            puts "No data available"
        end
    end
        
end

# Product.apisearch('name','type')
# name: <product name>
# type: title, image, description and price