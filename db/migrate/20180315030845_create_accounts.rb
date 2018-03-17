class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.datetime :creation
      t.references :person, :polymorphic => true
      t.string :status, :default => 'active'

      t.timestamps
    end
  end
end
