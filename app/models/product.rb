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
        
        if (response_hash["data"].any?)
            num_results = response_hash["data"].size
            if (type ==='title')
                return @product_title = response_hash["data"][0]["product_title"] unless @product_title === !nil
            elsif (type === 'image')
                return @api_image = response_hash["data"][0]["product_photos"][0] unless @api_image === !nil
            elsif (type === 'description')
                return @api_description = response_hash["data"][0]["product_description"] unless @api_description === !nil
            elsif (type === 'price')
                return @api_price = response_hash["data"][0]["offer"]["price"] unless @api_price === !nil
            else 
                puts "invalid argument"
            end 
        else
            puts "No data available"
        end
    end
    #Product.apisearch('','image')
    # def self.apisearch (searchterm)
    #     require 'uri'
    #     require 'net/http'
    #     require 'openssl'
    #     require 'json'
    #     # puts "User is searching for: #{searchterm}"
    #     endpoint = URI("https://real-time-product-search.p.rapidapi.com/search?q=#{searchterm}&country=au&language=en")
    #     # puts "Generated URL is:  #{endpoint}"
        
    #     http = Net::HTTP.new(endpoint.host, endpoint.port)
    #     http.use_ssl = true
    #     http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
    #     api_request = Net::HTTP::Get.new(endpoint)
    #     api_request["X-RapidAPI-Key"] = ENV['RAPID_API']
    #     api_request["X-RapidAPI-Host"] = 'real-time-product-search.p.rapidapi.com'
        
    #     api_response = http.request(api_request)
    #     # puts api_response.read_body

    #     @readout = api_response.read_body
    #     hash_as_string = @readout
    #     @readout_hash = JSON.parse hash_as_string.gsub('=>', ':')
    #     # puts @readout_hash

    #     if (@readout_hash["data"].any?)
    #         @description_api = @readout_hash["data"][0]["product_description"]
    #     end
    #     # puts @product_description

    #     #Error handling
    #     #@product_description = @readout_hash["data"][0]["product_description"]
    #     # find product id #@product_description = ["data"][0]["product_description"]
    #     #@product_description = ["data"][0]["product_description"]
    #     #@readout_hash["data"][0]["product_product_photos"] 
    #     #@readout_hash["data"][0]["offer"]["price"]
    #     #@readout_hash["data"][0].size
    #     return @description_api
    # end

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
        else
            @api_image = 'no image'
        end

        # if (@readout_hash["data"].any?)
        #     @api_image = @readout_hash["data"][0]["product_photos"][0]
        # end
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
