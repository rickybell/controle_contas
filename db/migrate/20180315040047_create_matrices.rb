class CreateMatrices < ActiveRecord::Migration[5.1]
  def change
    create_table :matrices do |t|
      t.references :account, foreign_key: true
      t.timestamps
    end
  end
end
