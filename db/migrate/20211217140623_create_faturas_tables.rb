class CreateFaturasTables < ActiveRecord::Migration[6.1]
  def change
    #Alterações para garantir a validação na camada do banco de dados
    create_table :faturas_tables do |t|
      #"t.belongs_to :matriculas_tables" relaciona a esta tabela, a tabela "matriculas_tables"
      t.belongs_to :matriculas_tables
      t.float :valor_faturas
      t.date :data_vencimento
      t.integer :id_matricula
      t.string :status

      t.timestamps
    end
  end
end
