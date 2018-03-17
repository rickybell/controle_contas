class CreateTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :transfers do |t|
      t.decimal :value
      t.boolean :reversal
      t.references :subsidiary, foreign_key: true

      t.timestamps
    end
  end
end
