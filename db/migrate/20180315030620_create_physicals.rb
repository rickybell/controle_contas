class CreatePhysicals < ActiveRecord::Migration[5.1]
  def change
    create_table :physicals do |t|
      t.string :cpf
      t.string :name
      t.date :born_date

      t.timestamps
    end
  end
end
