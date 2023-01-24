# TO DO

* User sessions and ability to save products
* API show alternative price
* First join table migration
* map products and categories
* map products and stores 

# Completed
* Product migration
* Category migration
* Models views/controllers for testing products/categories (index page)
* Model views/controllers for testing stores (index page)
* Create show pages for product/categories and stores.

# Heroku Commands

git status

 git push heroku

 heroku run rails db:migrate
 heroku run rails db:seed


 heroku open
 


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

➜  pricematchthree git:(master) rails generate controller Users new   
Running via Spring preloader in process 40722
      create  app/controllers/users_controller.rb
       route  get 'users/new'
      invoke  erb
      create    app/views/users
      create    app/views/users/new.html.erb
      invoke  helper
      create    app/helpers/users_helper.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/users.coffee
      invoke    scss
      create      app/assets/stylesheets/users.scss


➜  pricematchthree git:(master) ✗ rails g model User username:string password_digest:string  
Running via Spring preloader in process 44245
      invoke  active_record
      create    db/migrate/20230124004336_create_users.rb
      create    app/models/user.rb

 5510  rails generate controller Users new -p
 5511  rails generate controller Users new
 5512  rails generate migration add_password_digest_to_users password_digest:string
 5513  rails db:migrate
 5514  rails generate controller Users new
 5515  rails db:migrate
 5516  rails db
 5517  rails generate migration Users
 5518  rm db/migrate/20230124003506_users.rb
 5519  gaj
 5520  cd 04-rails/tunr/
 5521  ls
 5522  code .
 5523  rails g model User username:string password_digest:string -p
 5524  rails g model User username:string password_digest:string
 5525  rails s -p 3030
 5526  rails db:migrate
 5527  rails generate migration add_password_digest_to_users password_digest:string
 5528  rails db:migrate
 5529  rails s
 5530  clear
 5531  rails db
 5532  rails generate migration add_email_to_users email:string
 5533  rake db:migrate
 5534  rclone
 5535  rclone config
 5536  clear
 5537  rails db
 5538  \q
 5539  rails console
 5540  curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
 5541  heroku --version
 5542  heroku login
 5543  git add .
 5544  git commit -m "fixing login\n"
 5545  git push
 5546  heroku stack:set heroku-20
 5547  p1
 5548  cd pricematchthree/
 5549  clear
 5550  ls
 5551  git remote add origin git@github.com:Jeffrey-Fazal/project1pricematcher.git\ngit branch -M main\ngit push -u origin main
 5552  git add .
 5553  git commit -m "pre deploy test"
 5554  heroku create projectpricematcher
 5555  heroku stack:set heroku-20
 5556  git config --list | grep heroku
 5557  git push heroku main
 5558  npm install --global yarn
 5559  sudo npm install --global yarn
 5560  git push heroku main
 5561  bundle install
 5562  nano Gemfile
 5563  code Gemfile
 5564  bundle install
 5565  git push heroku main
 5566  git status
 5567  git add .
 5568  git commit -m "changed gem file and production enviroment"
 5569  git status
 5570  git push heroku main
 5571  p1code
 5572  heroku open
 5573  heroku run rails db:migrate
 5574  heroku run rails db:seed
 5575  git add .
 5576  git commit "removed cat id from seeds"
 5577  git commit -m "removed cat id from seeds"
 5578  git push origin
 5579  git push heroku
 5580  heroku open
 5581  git status
 5582  git status heroku
 5583  gahw
 5584  cd ..
 5585  cd .
 5586  cd ..
 5587  ls
 5588  p1
 5589  cd pricematchthree/
 5590  clear
