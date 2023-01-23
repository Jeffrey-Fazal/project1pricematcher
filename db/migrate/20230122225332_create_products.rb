class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :name  
      t.integer :product_id
      t.text :title 
      t.text :rrp
      t.text :series
      t.text :brand 
      t.integer :category_id
      t.text :price_cheaptest
      t.text :sku
      t.text :photo
      t.text :image_url
      t.text :rating
      t.text :description
      t.text :store_name_price
      t.timestamps
    end
  end
end
