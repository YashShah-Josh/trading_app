class DropTableName < ActiveRecord::Migration[7.2]
  def change
    drop_table :transactions_details
  end
end
