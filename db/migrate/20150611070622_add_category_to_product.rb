class AddCategoryToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :categories, index: true, foreign_key: true
  end
end
