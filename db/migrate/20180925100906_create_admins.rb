class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :Name
      t.string :Adminid
      t.string :Password
      t.string :Designation

      t.timestamps
    end
  end
end
