class CreateAlunoTables < ActiveRecord::Migration[6.1]
  def change
    create_table :aluno_tables do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nasc
      t.integer :cell
      t.string :genero
      t.string :meio_pag

      t.timestamps
    end
  end
end
