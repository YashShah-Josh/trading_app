class CreateTransactions < ActiveRecord::Migration[7.2]
  def change
    create_table :transactions do |t|
      t.float :brokerage
      t.float :gst
      t.float :transaction_value
      t.string :transaction_type
      t.integer :quantity
      t.references :user_details, null: false, foreign_key: true
      t.references :stocks, null: false, foreign_key: true
      t.timestamps
    end
  end
end
