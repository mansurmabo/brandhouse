class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :title
      t.integer :products_count

      t.timestamps null: false
    end
  end
end
