class RenameOldTableNameToNewTableName < ActiveRecord::Migration[7.2]
  def change
    rename_table Transaction, :transactions_details
  end
end
