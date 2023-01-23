class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.text :store_slug
      t.text :name
      t.text :logo
      t.integer :phone
      t.text :store_location
      t.boolean :sponsor
      t.timestamps
    end
  end
end
