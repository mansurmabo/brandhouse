class AddAdditionalFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :vendor_code, :string
    add_column :products, :brand, :string
    add_column :products, :availability, :string
  end
end
