class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :masp
      t.string :tensp
      t.integer :soluong
      t.integer :giaban
      t.string :short_description
      t.string :long_description
      t.attachment :image
      t.string :xuatxu
      t.string :gia_khuyenmai
      t.integer :view
      t.integer :distribute_id
      t.integer :categories_id
      
      t.timestamps null: false
    end
  end
end
