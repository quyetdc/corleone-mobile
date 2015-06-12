class CategoriesDistributes < ActiveRecord::Migration
  def change
    create_table :categories_distributes, :id => false do |t|
      t.integer :category_id
      t.integer :distribute_id
    end
  end
end
