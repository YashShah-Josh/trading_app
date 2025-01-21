class AddStockPriceToTransactions < ActiveRecord::Migration[7.2]
  def change
    add_column :transactions, :stock_price, :float
  end
end
