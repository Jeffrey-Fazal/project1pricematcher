require 'csv'

Product.destroy_all
p 'destory all products'
csv_text_products = File.read(Rails.root.join('lib', 'seeds', 'productseeds.csv'))
csv_products = CSV.parse(csv_text_products , :headers => true, :encoding => 'ISO-8859-1')
csv_products.each do |row|
  t = Product.new
  t.name = row['name']
  # t.pdt_id = row['product_id']
  t.rrp = row['rrp']
  t.series = row['series']
  t.brand = row['brand'] 
  # t.cat_id = row['category_id']
  t.price_cheaptest = row['price_cheaptest']
  t.sku = row['sku']
  t.photo = row['photo']
  t.image_url = row['image_url']
  t.rating = row['rating']
  t.description = row['description']
  t.store_name_price = row['store_name_price']
  t.save
  puts "name: #{t.name } rrp:#{t.rrp} saved"
end
Category.destroy_all
# product_categories
csv_text_category = File.read(Rails.root.join('lib', 'seeds', 'categoryseeds.csv'))
csv_categories = CSV.parse(csv_text_category, :headers => true, :encoding => 'ISO-8859-1')
csv_categories.each do |row|
  t = Category.new
  # t.cat_id  = row['category_id'] 
  t.name  = row['name']
  t.desciption  = row['desciption']
  t.image  = row['image']
  t.save
  puts "#{t.name}, #{t.name} saved"
end

# stores
csv_text_stores = File.read(Rails.root.join('lib', 'seeds', 'stores.csv'))
csv_stores = CSV.parse(csv_text_stores, :headers => true, :encoding => 'ISO-8859-1')
csv_stores.each do |row|
  t = Store.new 
  t.store_slug  = row['store_slug']
  t.name  = row['name']
  t.logo  = row['logo']
  t.phone  = row['phone']
  t.store_location  = row['store_location']
  t.save
  puts "#{t.name}, #{t.store_slug} saved"
end