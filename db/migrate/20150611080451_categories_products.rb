class CategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products, :id => false do |t|
      t.integer :categories_id
      t.integer :product_id
    end
  end
end
