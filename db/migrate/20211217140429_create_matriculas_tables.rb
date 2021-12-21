class CreateMatriculasTables < ActiveRecord::Migration[6.1]
  def change
    create_table :matriculas_tables do |t|
      t.belongs_to :aluno_tables
      t.belongs_to :ies_tables
      t.float :v_total
      t.integer :qtd_faturas
      t.integer :vencimento
      t.string :nome_curso
      #t.integer :id_ies
      #t.integer :id_aluno

      t.timestamps
    end
  end
end
