class CreateIesTables < ActiveRecord::Migration[6.1]
  def change
    #Alterações para garantir a validação na camada do banco de dados
    create_table :ies_tables do |t|
      t.string :nome
      t.string :cnpj
      t.string :tipo

      t.timestamps
    end
  end
end
