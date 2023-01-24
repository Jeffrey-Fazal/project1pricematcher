# https://medium.com/@ozhorov/how-to-implement-search-feature-in-rails-and-search-across-multiple-tables-f80b7a3825bb

#products_controller.rb
def search
end

#/views/products/search.html.erb

#routes.rb
get '/search', to: "products#search"

#applications.html 
<%= from_tag(search_path, :method => "get") do %>
    <div class="input-group">
    <%= search_field_tag :search, params[:search], placeholder: "Type", class: "form-control" %>
    <div class="input-group-btn">
    <%= button_tag "Search Products", :class => 'btn btn-info glyphicon glyphicon-search',:name => nil%>
    </div>
    </div>
<% end %>

# add to products_controler
def search
    if params[:search].blank?
    else
    @parameter = params[:search].downcase
    @results = Product.all.where("lower(name) LIKE :search", search "%#{@parameter}%")
    end
end

#search.erb
<h2> Search Results </h2>
    <% @results.each do |result| %>
        <% result.name %><br>
    <% end >