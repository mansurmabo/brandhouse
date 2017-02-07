class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :fullname

      t.timestamps null: false
    end
  end
end
