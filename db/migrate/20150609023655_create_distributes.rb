class CreateDistributes < ActiveRecord::Migration
  def change
    create_table :distributes do |t|
      t.string :name
      t.string :path

      t.timestamps null: false
    end
  end
end
