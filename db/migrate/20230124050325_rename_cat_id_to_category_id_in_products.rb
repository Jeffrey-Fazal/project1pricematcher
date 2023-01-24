class RenameCatIdToCategoryIdInProducts < ActiveRecord::Migration[5.2]
  def change
      rename_column :products, :cat_id, :category_id
  end
end
