class CreateLogins < ActiveRecord::Migration[5.1]
  def change
    create_table :logins do |t|
      t.string :Userid
      t.string :Password

      t.timestamps
    end
  end
end
