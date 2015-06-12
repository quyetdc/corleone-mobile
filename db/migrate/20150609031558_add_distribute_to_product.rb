class AddDistributeToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :distribute, index: true, foreign_key: true
  end
end
