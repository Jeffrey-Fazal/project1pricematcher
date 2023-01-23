 5248  rails new pricematchthree -T --database=postgresql
 5250  bundle 
 5251  nano Gemfile
 5252  rails db:create
 5253  git add .
 5254  git commit -m "first commit | pre first migration"

rails generate model Product -p

 Running via Spring preloader in process 423760
      invoke  active_record
      create    db/migrate/20230122224043_create_products.rb
      create    app/models/product.rb

rails generate model Product
rails generate controller Products index show

➜  pricematchthree git:(master) ✗ rails generate controller Products index show Running via Spring preloader in process 441717
      create  app/controllers/products_controller.rb
       route  get 'products/index'
              get 'products/show'
      invoke  erb
      create    app/views/products
      create    app/views/products/index.html.erb
      create    app/views/products/show.html.erb
      invoke  helper
      create    app/helpers/products_helper.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/products.coffee
      invoke    scss
      create      app/assets/stylesheets/products.scss

* preparing full migation