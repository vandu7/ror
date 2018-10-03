class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Userid
      t.string :Password
      t.integer :Batch
      t.string :Branch
      t.string :Email

      t.timestamps
    end
  end
end
