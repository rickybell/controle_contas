class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.decimal :value
      t.references :origin, :polymorphic => true
      t.references :type, :polymorphic => true
      t.references :destiny, :polymorphic => true
      t.boolean :reversal, :default => false
      
      t.timestamps
    end
  end
end
