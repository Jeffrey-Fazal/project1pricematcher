# TO DO
* Create show pages for product/categories and stores.
* User sessions and ability to save products
* First join table migration 

# Completed
* Product migration
* Category migration
* Models views/controllers for testing products/categories (index page)
* Model views/controllers for testing stores (index page)

# Scrap Book
 
 
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
rails db:migrate
➜  pricematchthree git:(master) ✗ rails console
Running via Spring preloader in process 457599
Loading development environment (Rails 5.2.8.1)
2.7.7 :001 > Product.new
 => #<Product id: nil, name: nil, product_id: nil, title: nil, rrp: nil, series: nil, brand: nil, category_id: nil, price_cheaptest: nil, sku: nil, photo: nil, image_url: nil, rating: nil, description: nil, store_name_price: nil, created_at: nil, updated_at: nil> 

 5293  rails generate
 5298  rails db:migrate
 5299  rails console
 5300  rails db:seed
 5301  rails console
 5302  rails db:rollback
 5303  rails db:migrate
 5304  rails db:seed
 5305  git add .
 5306  rails generate controller Products index show

 ➜  pricematchthree git:(master) ✗ rails generate model Category  

Running via Spring preloader in process 468250
      invoke  active_record
      create    db/migrate/20230123030126_create_categories.rb
      create    app/models/category.rb

➜  pricematchthree git:(master) ✗ rails generate model Category   
Running via Spring preloader in process 468250
      invoke  active_record
      create    db/migrate/20230123030126_create_categories.rb
      create    app/models/category.rb
➜  pricematchthree git:(master) ✗ 
➜  pricematchthree git:(master) ✗ rails db:migrate
== 20230123030126 CreateCategories: migrating =================================
-- create_table(:categories)
   -> 0.0104s
== 20230123030126 CreateCategories: migrated (0.0105s) ========================

➜  pricematchthree git:(master) ✗ rails db:seed
1, 14 inch  saved
2, CLEARANCE saved
3, 17 inch saved
➜  pricematchthree git:(master) ✗ 

➜  pricematchthree git:(master) ✗ rails generate controller Category -p
Running via Spring preloader in process 469219
      create  app/controllers/category_controller.rb
      invoke  erb
      create    app/views/category
      invoke  helper
      create    app/helpers/category_helper.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/category.coffee
      invoke    scss
      create      app/assets/stylesheets/category.scss
 5390  fly deploy
 5391  code .
 5392  flyctl ssh console -C '/app/bin/rails db:seed'


➜  pricematchthree git:(master) ✗ rails generate controller Pages home about contact subscribe terms  
Running via Spring preloader in process 508305
      create  app/controllers/pages_controller.rb
       route  get 'pages/home'
              get 'pages/about'
              get 'pages/contact'
              get 'pages/subscribe'
              get 'pages/terms'
      invoke  erb
      create    app/views/pages
      create    app/views/pages/home.html.erb
      create    app/views/pages/about.html.erb
      create    app/views/pages/contact.html.erb
      create    app/views/pages/subscribe.html.erb
      create    app/views/pages/terms.html.erb
      invoke  helper
      create    app/helpers/pages_helper.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/pages.coffee
      invoke    scss
      create      app/assets/stylesheets/pages.scss

➜  pricematchthree git:(master) ✗ rails generate controller Store index show   
Running via Spring preloader in process 509024
      create  app/controllers/store_controller.rb
       route  get 'store/index'
              get 'store/show'
      invoke  erb
      create    app/views/store
      create    app/views/store/index.html.erb
      create    app/views/store/show.html.erb
      invoke  helper
      create    app/helpers/store_helper.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/store.coffee
      invoke    scss
      create      app/assets/stylesheets/store.scss
* pending git commit
* first migration
rails generate migration AddProductIdToProductCategories product_id:integer