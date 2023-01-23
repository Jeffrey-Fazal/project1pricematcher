class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      # t.integer :cat_id
      t.text :name
      t.text :desciption
      t.text :image
      t.timestamps
    end
  end
end
