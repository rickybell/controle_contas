class AddDefaultReversalToContributions < ActiveRecord::Migration[5.1]
  def change
    change_column_default :contributions, :reversal, false 
  end
end
