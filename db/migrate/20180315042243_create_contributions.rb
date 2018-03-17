class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions do |t|
      t.string :code
      t.decimal :value
      t.boolean :reversal
      t.references :matrix, foreign_key: true

      t.timestamps
    end
  end
end
