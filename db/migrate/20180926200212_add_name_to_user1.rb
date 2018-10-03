class AddNameToUser1 < ActiveRecord::Migration[5.1]
  def change
    add_column :user1s, :Name, :string
    add_column :user1s, :Userid, :string
    add_column :user1s, :Batch, :integer
    add_column :user1s, :Branch, :string
  end
end
