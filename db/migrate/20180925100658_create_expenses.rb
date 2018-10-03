class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :EventName
      t.string :Rollno
      t.integer :Amount
      t.string :Justification
      t.boolean :Status

      t.timestamps
    end
  end
end
