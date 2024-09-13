class CreateFinances < ActiveRecord::Migration[7.1]
  def change
    create_table :finances do |t|
      t.datetime :date
      t.integer :amount

      t.timestamps
    end
  end
end
