class AddCategoryToDistribute < ActiveRecord::Migration
  def change
    add_reference :distributes, :category, index: true, foreign_key: true
  end
end
