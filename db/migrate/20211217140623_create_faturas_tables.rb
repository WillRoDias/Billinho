class CreateFaturasTables < ActiveRecord::Migration[6.1]
  def change
    create_table :faturas_tables do |t|
      t.float :valor_faturas
      t.date :data_vencimento
      t.integer :id_matricula
      t.string :status

      t.timestamps
    end
  end
end
