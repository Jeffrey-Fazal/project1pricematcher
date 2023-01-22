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