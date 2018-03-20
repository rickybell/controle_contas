class AddDefaultReversalToTranfers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :transfers, :reversal, false 
  end
end
