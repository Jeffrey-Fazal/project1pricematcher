# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# Product.destroy_all
# p 'destory all products'
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'a1.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Product.new
#   t.product_id = row['product_id']
#   t.product_title = row['formatName']
#   t.rrp = row['rrp']
#   t.series = row['series']
#   t.brand = row['brand'] 
#   t.category_id = row['category_id']
#   t.price_cheaptest = row['price_cheaptest']
#   t.sku = row['sku']
#   t.photo = row['photo']
#   t.image_url = row['image_url']
#   t.rating = row['rating']
#   t.description = row['description']
#   t.store_name_price = row['store_name_price']
#   t.save
#   puts "title: #{t.product_title } rrp:#{t.rrp} id:#{t.product_id} saved"
# end

# # product_categories
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'categoryseeds.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Category.new
#   t.category_id  = row['category_id'] 
#   t.name  = row['name']
#   t.desciption  = row['desciption']
#   t.image  = row['image']
#   t.save
#   puts "#{category_id}, #{t.name} saved"
# end